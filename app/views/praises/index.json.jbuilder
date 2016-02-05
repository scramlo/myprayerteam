json.array!(@praises) do |praise|
  json.extract! praise, :id, :title, :description
  json.url praise_url(praise, format: :json)
end
