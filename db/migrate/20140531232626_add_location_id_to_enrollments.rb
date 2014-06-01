class AddLocationIdToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :location_id, :integer
  end
end
