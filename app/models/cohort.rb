class Cohort < ActiveRecord::Base
	has_many :assignments
	has_many :locations, through: :iyaclass
end
