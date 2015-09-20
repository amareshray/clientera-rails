class RemoveUserIdFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :user_id, :integer
  end
end
