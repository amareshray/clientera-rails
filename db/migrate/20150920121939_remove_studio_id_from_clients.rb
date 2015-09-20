class RemoveStudioIdFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :studio_id, :integer
  end
end
