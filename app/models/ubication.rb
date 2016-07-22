class Ubication < ActiveRecord::Base
    belongs_to :insect
    validates :latitud,:longitud, presence:true

end
