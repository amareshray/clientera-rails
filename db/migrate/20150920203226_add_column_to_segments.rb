class AddColumnToSegments < ActiveRecord::Migration
  def change
    add_column :segments, :client_id, :integer
    add_column :segments, :email_id, :integer
  end
end
