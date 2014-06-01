class Location < ActiveRecord::Base
	has_many :cohorts, through: :iyaclass
end
