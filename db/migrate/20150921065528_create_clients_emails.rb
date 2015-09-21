class CreateClientsEmails < ActiveRecord::Migration
  def change
    create_table :clients_emails do |t|
      t.integer :client_id
      t.integer :email_id
      t.timestamps null: false
    end
  end
end
