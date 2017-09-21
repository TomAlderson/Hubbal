class DropTableContents < ActiveRecord::Migration
  def change
  	drop_table :contents
  end
end
