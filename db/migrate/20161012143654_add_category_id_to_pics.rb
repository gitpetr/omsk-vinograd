class AddCategoryIdToPics < ActiveRecord::Migration
  def change
    add_column :pics, :category_id, :integer
    add_index :pics, :category_id
  end
end
