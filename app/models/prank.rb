class Prank < ActiveRecord::Base
  belongs_to :prank_type
  validates :name, :description, :photo, presence: true
end
