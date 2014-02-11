class Organization < ActiveRecord::Base
  attr_accessible :description, :name, :popularity_index 
  # attr_accessible :user_id
  attr_accessible :image
  attr_accessible :twitter_handle
  attr_accessible :fb_uri
  mount_uploader :image, ImageUploader
  after_create :create_fb_events

  #validates :description, :presence => true
  validates :name, :presence => true

  has_many :owners, :dependent => :destroy
  has_many :admins, :through => :owners, :source => :user
  # belongs_to :user
  
  has_many :events, :dependent => :destroy

  accepts_nested_attributes_for :owners
  attr_accessible :owners_attributes => [:user_id, :id]

  def create_fb_events
    if self.fb_uri.present?
      uri = self.fb_uri
      app = FbGraph::Application.new('692942400723630', :secret => 'f548b8ded4546ac1d693806236bff235')
      token = app.get_access_token
      page = FbGraph::Page.fetch(uri, :access_token => token)
      org_events = page.events({:fields => "name,description,picture,id,location,start_time"})
      org_events.each do |event|
        Event.create!(
            :name => event.name,
            :description => event.description,
            :location => event.location,
            :date =>event.start_time ,
            :time => event.start_time,
            :organization_id => self.id,
            :remote_image_url => event.picture+'?type=large'  #COME BACK TO THIS
        )
      end
    end
  end
end
