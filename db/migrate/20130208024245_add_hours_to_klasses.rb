class AddHoursToKlasses < ActiveRecord::Migration
  def change
    add_column :klasses, :hours, :integer
  end
end
