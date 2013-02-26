class AddFileToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :filename, :string
    add_column :courses, :data, :binary
    add_column :courses, :mime_type, :string
  end
end
