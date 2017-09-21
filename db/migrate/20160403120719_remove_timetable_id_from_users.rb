class RemoveTimetableIdFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :timetable_id, :integer
  end
end
