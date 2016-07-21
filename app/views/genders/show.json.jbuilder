json.array!(@genders) do |gender|
  json.extract! gender, :id,:descripcion
  json.url gender_url(gender, format: :json)
end
