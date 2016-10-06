json.extract! event, :id, :name, :date, :info, :location, :time, :free, :created_at, :updated_at
json.url event_url(event, format: :json)