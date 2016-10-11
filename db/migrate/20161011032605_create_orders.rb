class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :fio
      t.text :address
      t.string :index
      t.string :phone
      t.string :email
      t.text :price

      t.timestamps null: false
    end
  end
end
