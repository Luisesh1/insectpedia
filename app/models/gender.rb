class Gender < ActiveRecord::Base
    has_many :insects
    belongs_to :family
end