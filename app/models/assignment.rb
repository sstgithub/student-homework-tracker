class Assignment < ActiveRecord::Base
	belongs_to 	:cohort
	has_many 		:comments, as: :commentable
end
