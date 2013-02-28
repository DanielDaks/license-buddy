class AddDistroToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :distro, :string
  end
end
