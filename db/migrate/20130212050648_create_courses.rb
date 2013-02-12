class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.float :credit
      t.float :price
      t.float :hours
      t.integer :user_id

      t.timestamps
    end
  end
end
