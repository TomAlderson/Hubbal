class AddColourToGroups < ActiveRecord::Migration
  def change
  	add_column :groups, :colour, :string
  end
end
