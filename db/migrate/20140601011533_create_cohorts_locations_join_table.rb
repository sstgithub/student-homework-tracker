class CreateCohortsLocationsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :cohorts, :locations do |t|
      # t.index [:cohort_id, :location_id]
      # t.index [:location_id, :cohort_id]
    end
  end
end
