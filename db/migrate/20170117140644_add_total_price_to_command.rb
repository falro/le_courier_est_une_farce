class AddTotalPriceToCommand < ActiveRecord::Migration
  def change
     add_column :commands, :totalPrice, :integer
  end
end
