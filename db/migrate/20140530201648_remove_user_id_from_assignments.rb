class RemoveUserIdFromAssignments < ActiveRecord::Migration
  def change
    remove_column :assignments, :user_id, :integer
  end
end
