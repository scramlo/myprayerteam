class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.string :title
      t.text :description
      t.boolean :answered

      t.timestamps null: false
    end
  end
end
