class AddUserIdToPrayers < ActiveRecord::Migration
  def change
    add_column :prayers, :user_id, :integer
    add_index :prayers, :user_id
  end
end
