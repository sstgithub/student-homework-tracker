class Submission < ActiveRecord::Base
	belongs_to 	:user
	belongs_to 	:assignment
	has_many 		:comments, as: :commentable
	validates_presence_of :user_id
	validates_presence_of :assignment_id
	validates_uniqueness_of :assignment_id, :scope => [:user_id]
end
