class ChangeStartToString < ActiveRecord::Migration
  def change
  	change_column :timetable_entries, :start, :string
  end
end
