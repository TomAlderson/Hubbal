class CreateLoginActivities < ActiveRecord::Migration
  def change
    create_table :login_activities do |t|
      t.datetime :time
      t.string :ip

      t.timestamps null: false
    end
  end
end
