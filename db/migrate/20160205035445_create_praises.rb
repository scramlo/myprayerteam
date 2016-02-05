class CreatePraises < ActiveRecord::Migration
  def change
    create_table :praises do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
