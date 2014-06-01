class AddMainBooleanDefaultValueToEnrollments < ActiveRecord::Migration
	def up
		change_column_default :enrollments, :main, false
	end

	def down
		change_column_default :enrollments, :main, nil
	end
end
