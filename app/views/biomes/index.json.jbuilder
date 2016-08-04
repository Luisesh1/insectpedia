json.array!(@biomes) do |biome|
  json.id biome.id
  json.descripcion biome.descripcion
end
