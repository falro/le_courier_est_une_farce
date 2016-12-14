class Letter < ActiveRecord::Base
  belongs_to :type_letter
  validates :name, :description, presence: true
end
