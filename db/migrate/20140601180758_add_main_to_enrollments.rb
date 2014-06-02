class AddMainToEnrollments < ActiveRecord::Migration
  def change
  	add_column :enrollments, :main, :boolean, default: false
  end
end
