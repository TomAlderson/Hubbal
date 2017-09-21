class RemoveTimetableIdFromGroups < ActiveRecord::Migration
  def change
  	remove_column :groups, :timetable_id, :integer
  end
end
