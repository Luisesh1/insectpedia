class Order < ActiveRecord::Base
    has_many :insects
    has_many :families
    validates :descripcion, presence:true
end
