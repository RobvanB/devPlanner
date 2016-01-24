json.array!(@task_statuses) do |task_status|
  json.extract! task_status, :id, :string
  json.url task_status_url(task_status, format: :json)
end
