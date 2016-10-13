class AddForSaleToPics < ActiveRecord::Migration
  def change
    add_column :pics, :for_sale, :boolean, default: true
  end
end
