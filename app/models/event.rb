class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :name, :ticket_info, :time 
  attr_accessible :user_id, :category_id, :organization_id
  attr_accessible :image, :remote_image_url
  mount_uploader :image, ImageUploader

  letsrate_rateable "event"

  # validates :date, :presence => true
  validates :description, :presence => true
  validates :location, :presence => true
  validates :name, :presence => true

  has_many :comments, :dependent => :destroy
  belongs_to :user
  belongs_to :category
  belongs_to :organization

  ##### Event Attendance Relationship #####
  has_many :attendances, :foreign_key => :attended_event_id, :dependent => :destroy
  has_many :attendees, :through => :attendances, :source => :user


end
