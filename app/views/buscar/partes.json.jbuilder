json.array!(@partes) do |part|
  json.cover part.cover.url
  json.especie part.insect.especie
  json.parte part.part.descripcion
  json.url insect_url(part.insect)
end
