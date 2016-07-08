json.array!(@items) do |item|
  json.extract! item, :id, :filename, :name, :item_type, :owner_id, :on_sale, :purchased, :stock, :specs, :price, :comment_id
  json.url item_url(item, format: :json)
end
