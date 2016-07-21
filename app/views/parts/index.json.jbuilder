json.array!(@parts) do |part|
  json.extract! part, :id,:descripcion
  json.url part_url(part, format: :json)
end
