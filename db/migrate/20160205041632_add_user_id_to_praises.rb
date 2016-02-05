class AddUserIdToPraises < ActiveRecord::Migration
  def change
    add_column :praises, :user_id, :integer
    add_index :praises, :user_id
  end
end
