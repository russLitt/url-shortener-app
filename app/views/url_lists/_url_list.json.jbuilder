json.extract! url_list, :id, :full_url, :short_url, :created_at, :updated_at
json.url url_list_url(url_list, format: :json)
