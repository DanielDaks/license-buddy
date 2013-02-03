class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :credit

      t.timestamps
    end
  end
end
