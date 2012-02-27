class Essay < ActiveRecord::Base
	attr_accessible :content, :title
	belongs_to :user

	validates :content, presence: true
        validates_length_of :content, :maximum => 500, :tokenizer => lambda {|str| str.scan(/\w+/) }	
	validates :user_id, presence: true
	default_scope order: 'essays.created_at DESC'
end
