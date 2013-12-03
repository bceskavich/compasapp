class Comment < ActiveRecord::Base
	attr_accessible :content
	attr_accessible :user_id, :event_id

	validates :content, :presence => :true

	belongs_to :user
	belongs_to :event 
end
