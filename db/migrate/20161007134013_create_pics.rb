class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :title
      t.string :image
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
