class State < ActiveRecord::Base
    has_many :municipalities
    belongs_to :biome
end
