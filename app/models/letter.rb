class Letter < ActiveRecord::Base
  belongs_to :type_letter
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/pictures/missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates :name, :description,:price , presence: true
  validates :price, numericality: true, numericality: { greater_than: 0}
end
