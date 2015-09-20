class RemoveUserIdFromEmails < ActiveRecord::Migration
  def change
    remove_column :emails, :user_id, :integer
  end
end
