class AddPriceToCommands < ActiveRecord::Migration
  def change
    add_column :pranks, :price, :integer
    add_column :letters, :price, :integer
  end
end
