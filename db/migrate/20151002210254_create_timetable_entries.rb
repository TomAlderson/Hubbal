class CreateTimetableEntries < ActiveRecord::Migration
  def change
    create_table :timetable_entries do |t|
      t.integer :timetable_id
      t.integer :lesson_id
      t.datetime :start
      t.datetime :finish

      t.timestamps null: false
    end
  end
end
