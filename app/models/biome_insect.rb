class BiomeInsect < ActiveRecord::Base
  belongs_to :insect
  belongs_to :biome
end
