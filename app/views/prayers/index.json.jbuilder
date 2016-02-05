json.array!(@prayers) do |prayer|
  json.extract! prayer, :id, :title, :description, :answered
  json.url prayer_url(prayer, format: :json)
end
