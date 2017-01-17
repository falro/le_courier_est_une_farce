class TypeLetter < ActiveRecord::Base
    validates :name, :description, presence: true
    validates :name, :description, length: {minimum: 2}
    validates :name, length: {maximum: 20}
    validates :description, length: {maximum: 500}
    has_many :letters
end
