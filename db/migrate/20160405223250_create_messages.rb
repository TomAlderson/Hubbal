class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :recipent_id
      t.integer :sender_id
      t.text :content
      t.text :subject

      t.timestamps null: false
    end
  end
end
