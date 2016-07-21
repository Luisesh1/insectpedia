class Order < ActiveRecord::Base
    has_many :insects
    has_many :families
end
