class Essay < ActiveRecord::Base
	attr_accessible :content, :title
	belongs_to :user

	validates :user_id, presence: true
end
