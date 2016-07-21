json.array!(@families) do |family|
  json.extract! family, :id,:descripcion
  json.url family_url(family, format: :json)
end
