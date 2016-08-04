class Image < ActiveRecord::Base
    has_attached_file :cover , styles:{mediano:"1280x720",tumb:"800x600"}
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
    belongs_to :insect
    belongs_to :part
    validates :cover,:part_id,presence:true
end
