json.extract! item, :id, :quantity, :price, :book_id, :created_at, :updated_at
json.url item_url(item, format: :json)
