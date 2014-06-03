class AddStatusDefaultValueToSubmissions < ActiveRecord::Migration
  def up
		change_column_default :submissions, :status, "New"
	end

	def down
		change_column_default :submissions, :status, nil
	end
end
