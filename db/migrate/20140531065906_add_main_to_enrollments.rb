class AddMainToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :main, :boolean
  end
end
