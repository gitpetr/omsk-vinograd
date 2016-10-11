json.extract! order, :id, :fio, :address, :index, :phone, :email, :price, :created_at, :updated_at
json.url order_url(order, format: :json)