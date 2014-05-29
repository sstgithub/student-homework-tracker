class CreateEnrollmentTable < ActiveRecord::Migration
  def change
    create_table :enrollment_tables do |t|
      t.integer 	:cohort_id
      t.integer 	:user_id
    end
  end
end
