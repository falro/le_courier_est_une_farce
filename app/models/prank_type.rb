class PrankType < ActiveRecord::Base
    validates :name, :description, presence: true
end
