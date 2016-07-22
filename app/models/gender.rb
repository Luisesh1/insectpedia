class Gender < ActiveRecord::Base
    has_many :insects
    belongs_to :family
    validates :descripcion, presence:true
end