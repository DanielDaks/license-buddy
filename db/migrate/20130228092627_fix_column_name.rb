class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :requirements, :attribute, :distro
  end

  def down
  end
end
