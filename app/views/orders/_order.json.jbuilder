json.extract! order, :id, :date, :price, :item_id, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
