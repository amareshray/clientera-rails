class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :email_name
      t.text :subject
      t.text :from_name
      t.text :from_email
      t.text :body

      t.timestamps null: false
    end
  end
end
