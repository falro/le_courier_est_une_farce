class AddAddressToCommand < ActiveRecord::Migration
  def change
    add_column :commands, :Address, :string
  end
end
