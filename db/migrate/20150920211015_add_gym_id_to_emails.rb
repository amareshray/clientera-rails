class AddGymIdToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :gym_id, :integer
    add_index :emails, :gym_id
  end
end
