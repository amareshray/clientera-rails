class AddGymIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :gym_id, :integer
    add_index :clients, :gym_id
  end
end
