json.extract! task, :id, :name, :description, :published, :created_at, :updated_at
json.url task_url(task, format: :json)
