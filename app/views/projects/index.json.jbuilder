json.array!(@projects) do |project|
  json.extract! project, :id, :proj_id, :proj_name, :cust_id
  json.url project_url(project, format: :json)
end
