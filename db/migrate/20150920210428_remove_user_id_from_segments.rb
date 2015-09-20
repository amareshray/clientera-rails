class RemoveUserIdFromSegments < ActiveRecord::Migration
  def change
    remove_column :segments, :user_id, :integer
  end
end
