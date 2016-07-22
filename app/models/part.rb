class Part < ActiveRecord::Base
    has_many :images
    validates :descripcion, presence:true
    has_many :images
    has_many :insects, :through => :images
end
