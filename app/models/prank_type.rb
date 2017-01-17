class PrankType < ActiveRecord::Base
    validates :name, :description, presence: true
    has_many :pranks
end
