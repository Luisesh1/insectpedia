class Family < ActiveRecord::Base
    has_many :insects
    belongs_to :order
    has_many :genders
    validates :descripcion, presence:true
end
