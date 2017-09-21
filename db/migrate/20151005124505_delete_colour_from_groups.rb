class DeleteColourFromGroups < ActiveRecord::Migration
  def change
  	remove_column :groups, :colour
  end
end
