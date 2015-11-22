json.array!(@pms) do |pm|
  json.extract! pm, :id, :name, :email, :user_id
  json.url pm_url(pm, format: :json)
end
