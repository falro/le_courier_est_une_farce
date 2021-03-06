require "administrate/base_dashboard"

class PrankDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    prank_type: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    description: Field::String,
    text: Field::String,
    photo: PaperclipField,
    dateCreation: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    price: Field::Number.with_options(
    title: "Price",
    prefix: "$",
    multiplier: 0.01,
    decimals: 2,),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :description,
    :prank_type,
    :price,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :description,
    :prank_type,
    :price,
    :photo,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :description,
    :prank_type,
    :price,
    :photo,
  ].freeze

  # Overwrite this method to customize how pranks are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(prank)
    "#{prank.name}"
  end
end
