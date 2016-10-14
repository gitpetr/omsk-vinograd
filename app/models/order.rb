class Order < ActiveRecord::Base
  validates :fio, :address, :index, :phone, :email, :price, presence: true
end
