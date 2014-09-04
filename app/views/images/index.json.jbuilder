json.array!(@images) do |image|
  json.extract! image, :name, :path
  json.url image_url(image, format: :json)
end
