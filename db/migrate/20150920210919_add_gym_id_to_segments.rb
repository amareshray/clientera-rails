class AddGymIdToSegments < ActiveRecord::Migration
  def change
    add_column :segments, :gym_id, :integer
    add_index :segments, :gym_id
  end
end
