class RemoveNameFromTimetable < ActiveRecord::Migration
  def change
  	remove_column :timetables, :name
  end
end
