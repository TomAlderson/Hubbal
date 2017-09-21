class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.integer :user_id
      t.integer :reporter_id
      t.datetime :date_from
      t.datetime :date_to
      t.text :reason

      t.timestamps null: false
    end
  end
end
