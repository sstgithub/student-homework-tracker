class RemoveCohortIdAndLocationIdFromEnrollments < ActiveRecord::Migration
  def change
    remove_column :enrollments, :cohort_id, :integer
    remove_column :enrollments, :location_id, :integer
  end
end
