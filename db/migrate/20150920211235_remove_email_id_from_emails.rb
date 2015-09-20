class RemoveEmailIdFromEmails < ActiveRecord::Migration
  def change
    remove_column :emails, :email_id, :integer
  end
end
