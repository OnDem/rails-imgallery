json.array!(@pictures) do |picture|
  json.extract! picture, :id, :name, :gallery_id
  json.url picture_url(picture, format: :json)
end
