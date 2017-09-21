class AddRoomToTimetableEntries < ActiveRecord::Migration
  def change
  	add_column :timetable_entries, :room, :string
  end
end
