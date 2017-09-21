class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :leader_id
      t.integer :timetable_id

      t.timestamps null: false
    end
  end
end
