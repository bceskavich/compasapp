class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :school, :uid, :provider, :name
  attr_accessible :location
  attr_accessible :password, :password_confirmation
  attr_accessible :token

  attr_accessible :user_name
  attr_accessible :image
  mount_uploader :image, ImageUploader

  letsrate_rater

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.user_name = auth["info"]["nickname"]
      user.location = auth["info"]["location"]
      user.remote_image_url = auth["info"]["image"]
      user.token = auth["credentials"]["token"]
    end
  end

  validates :user_name, :presence => true, :uniqueness => true

  validates :password, :length => { :minimum => 8, :maximum => 32 }, :confirmation => true, if: "provider.nil?"                             # Password Length
  validates :password, :format => { :with => /[a-z]/, :message => "At least one lower case letter mused be used." }, if: "provider.nil?"     # One lower case letter
  validates :password, :format => { :with => /[A-Z]/, :message => "At least one upper case letter mused be used." }, if: "provider.nil?"     # One upper case letter
  validates :password, :format => { :with => /[0-9]/, :message => "At least one number mused be used." }, if: "provider.nil?"                # One number

  validates :first_name, :presence => true
  validates :last_name, :presence => true

  has_many :comments, :dependent => :destroy
  has_many :organizations, :dependent => :destroy
  has_many :events, :dependent => :destroy

  ##### Event Attendance Relationship #####
  has_many :attendances, :foreign_key => :attendee_id, :dependent => :destroy
  has_many :attended_events, :through => :attendances, :source => :event

  ##### Event Attending Methods #####
  def attending?(event, user)
    a = Attendance.where("attended_event_id = ? AND attendee_id = ?", event.id, user.id)
    if a.empty?
      false
    else
      true
    end
  end

  def attend!(event, user)
    Attendance.create!(:attended_event_id => event.id, :attendee_id => user.id)
  end

  def unattend!(event)
    Attendance.find_by_attended_event_id(event.id).destroy
  end




end
