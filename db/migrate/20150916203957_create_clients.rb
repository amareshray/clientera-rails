class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :last_visit
      t.string :class_type
      t.integer :studio_id

      t.timestamps null: false
    end
  end
end
