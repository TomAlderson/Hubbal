class AddHtmlToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :html, :text
  end
end
