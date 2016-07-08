json.array!(@items) do |item|
  json.extract! item, :id, :filename, :price, :name, :stock, :specs
  json.url item_url(item, format: :json)
end
