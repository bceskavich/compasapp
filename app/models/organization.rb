class Organization < ActiveRecord::Base
  attr_accessible :description, :name, :popularity_index 
  attr_accessible :user_id
  attr_accessible :image
  attr_accessible :twitter_handle
  mount_uploader :image, ImageUploader

  validates :description, :presence => true
  validates :name, :presence => true

  belongs_to :user
  has_many :events, :dependent => :destroy 
end
