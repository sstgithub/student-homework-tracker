class CreateIyaclasses < ActiveRecord::Migration
  def change
    create_table :iyaclasses do |t|
    	t.integer	:cohort_id
    	t.integer	:location_id

    	t.timestamps
    end
  end
end
