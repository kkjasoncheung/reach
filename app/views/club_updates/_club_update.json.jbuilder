json.extract! club_update, :id, :content, :title, :created_at, :updated_at
json.url club_update_url(club_update, format: :json)