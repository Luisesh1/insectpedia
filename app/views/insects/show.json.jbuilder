json.extract! @insect, :id, :created_at, :updated_at,:id,:nombre,:genero,:especie,:order_id,:family_id,:gender_id,:descripcion_biologica,:cover_file_name,:cover_content_type,:cover_file_size,:cover_updated_at,:cover
json.ubicaciones @insect.ubications.select(:longitud,:latitud,:id)
json.imagenes (@insect.images) do |image|
  json.extract! image, :cover,:nota
  json.parte image.part.descripcion
  json.root request.host
end
