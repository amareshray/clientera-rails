class DropSegment < ActiveRecord::Migration
  def change
    drop_table :segments
  end
end
