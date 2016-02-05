class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.text :about_me
      t.string :profile_img

      t.timestamps null: false
    end
  end
end
