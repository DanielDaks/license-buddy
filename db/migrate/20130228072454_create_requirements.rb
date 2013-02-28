class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :attribute
      t.float :max
      t.float :min

      t.timestamps
    end
  end
end
