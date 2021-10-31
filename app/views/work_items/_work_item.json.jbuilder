json.extract! work_item, :id, :name, :label, :created_at, :updated_at
json.url work_item_url(work_item, format: :json)
