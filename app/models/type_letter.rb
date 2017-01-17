class TypeLetter < ActiveRecord::Base
    validates :name, :description, presence: true
    has_many :letters
end
