class RemoveSegmentIdFromSegments < ActiveRecord::Migration
  def change
    remove_column :segments, :segment_id, :integer
  end
end
