json.array!(@customers) do |customer|
  json.extract! customer, :id, :custId, :name, :pm
  json.url customer_url(customer, format: :json)
end
