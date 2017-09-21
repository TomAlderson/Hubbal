class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :course_id
      t.text :html

      t.timestamps null: false
    end
  end
end
