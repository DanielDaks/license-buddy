class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :license
      t.string :state
      t.string :organization
      t.text :description

      t.timestamps
    end
  end
end
