json.array!(@insects) do |insect|
  json.extract! insect, :id,:nombre,:genero,:especie,:order_id,:family_id,:gender_id,:descripcion_biologica,:cover_file_name,:cover_content_type,:cover_file_size,:cover_updated_at,:cover
  json.url insect_url(insect, format: :json)
  json.root request.host
end
