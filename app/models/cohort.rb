class Cohort < ActiveRecord::Base
	belongs_to :location
	has_many :enrollments
	has_many :users, through: :enrollments
	has_many :assignments
end
