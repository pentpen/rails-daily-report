json.extract! report, :id, :title, :content, :reported, :created_at, :updated_at
json.url report_url(report, format: :json)
