class AddWeightToLetter < ActiveRecord::Migration
  def change
    add_column :letters, :weight, :integer
  end
end
