class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string 		:assignment_name
      t.string 		:description
      t.datetime 	:due_date
      t.integer 	:cohort_id

      t.timestamps
    end
  end
end
