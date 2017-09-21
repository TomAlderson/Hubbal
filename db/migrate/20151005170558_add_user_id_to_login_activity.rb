class AddUserIdToLoginActivity < ActiveRecord::Migration
  def change
  	add_column :login_activities, :person_id, :string
  end
end
