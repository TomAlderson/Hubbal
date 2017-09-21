class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :phone
      t.integer :role

      t.timestamps null: false
    end
  end
end
