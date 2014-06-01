class RemoveLocationIdFromCohorts < ActiveRecord::Migration
  def change
    remove_column :cohorts, :location_id, :integer
  end
end
