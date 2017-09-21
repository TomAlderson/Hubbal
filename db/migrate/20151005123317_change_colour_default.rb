class ChangeColourDefault < ActiveRecord::Migration
  def change
  	change_column :groups, :colour, :string, :default => "default"
  end
end
