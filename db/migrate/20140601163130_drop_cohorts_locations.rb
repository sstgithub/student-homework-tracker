class DropCohortsLocations < ActiveRecord::Migration
	def up
		drop_table :cohorts_locations
	end

	def down
		raise ActiveRecord::IrreversibleMigration
	end
end
