class TypeLetter < ActiveRecord::Base
    validates :name, :description, presence: true
end
