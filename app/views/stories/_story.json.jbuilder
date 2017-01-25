json.extract! story, :id, :slug, :description, :reporter, :deadline, :date, :created_at, :updated_at
json.url story_url(story, format: :json)