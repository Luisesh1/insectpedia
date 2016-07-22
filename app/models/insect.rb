class Insect < ActiveRecord::Base
    has_attached_file :cover , styles:{mediano:"1280x720",tumb:"800x600"}
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
    belongs_to :gender
    has_many :images
    has_many :parts, :through => :images
    has_many :ubications
    
    validates :gender_id,:especie,:descripcion_biologica,presence:true
    accepts_nested_attributes_for :images,:ubications, :allow_destroy => true
    
end
