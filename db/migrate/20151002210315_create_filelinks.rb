class CreateFilelinks < ActiveRecord::Migration
  def change
    create_table :filelinks do |t|
      t.integer :content_id
      t.string :link
      t.integer :size
      t.string :type

      t.timestamps null: false
    end
  end
end
