class FixEmail < ActiveRecord::Migration
  def change
    rename_column :clients, :email, :email_address
  end
end
