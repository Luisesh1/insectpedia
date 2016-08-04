json.array!(@insectos) do |insecto|
  json.cover insecto.cover.url
  json.especie insecto.especie
  json.parte insecto.descripcion_biologica
  json.url insect_url(insecto)
end
