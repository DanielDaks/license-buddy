class CreateStatutes < ActiveRecord::Migration
  def change
    create_table :statutes do |t|
      t.integer :license_id
      t.integer :requirement_id
      t.date :deadline

      t.timestamps
    end
  end
end
