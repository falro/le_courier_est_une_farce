class Prank < ActiveRecord::Base
  belongs_to :prank_type
  validates :name, :description, :dateCreation, :photo, presence: true
end
