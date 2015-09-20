class RemoveEmailIdFromSegments < ActiveRecord::Migration
  def change
    remove_column :segments, :email_id, :integer
  end
end
