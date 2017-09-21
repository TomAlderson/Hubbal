class AddDayToTimetableEntries < ActiveRecord::Migration
  def change
  	add_column :timetable_entries, :day, :string
  end
end
