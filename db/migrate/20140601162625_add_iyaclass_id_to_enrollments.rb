class AddIyaclassIdToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :iyaclass_id, :integer
  end
end
