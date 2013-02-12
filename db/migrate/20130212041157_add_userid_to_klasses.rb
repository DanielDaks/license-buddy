class AddUseridToKlasses < ActiveRecord::Migration
  def change

		add_column :klasses, :user_id, :integer
		add_index :klasses, :user_id
  end
end
