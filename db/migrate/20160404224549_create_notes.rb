class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.text :title
      t.text :preview

      t.timestamps null: false
    end
  end
end
