require "administrate/base_dashboard"

class CommandDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    prank_type: Field::BelongsTo,
    prank: Field::BelongsTo,
    letter: Field::BelongsTo,
    type_letter: Field::BelongsTo,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    message: Field::String,
    OrderSend: Field::Boolean,
    totalPrice: Field::Number,
    Address: Field::String
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :type_letter,
    :letter,
    :prank_type,
    :prank,
    :totalPrice,
    :OrderSend,
    :Address
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :created_at,
    :message,
    :type_letter,
    :letter,
    :prank_type,
    :prank,
    :totalPrice,
    :OrderSend,
    :Address,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :OrderSend,
  ].freeze

  # Overwrite this method to customize how commands are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(command)
  #   "Command ##{command.id}"
  # end
end
