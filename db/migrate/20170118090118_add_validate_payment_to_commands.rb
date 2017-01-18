class AddValidatePaymentToCommands < ActiveRecord::Migration
  def change
    add_column :commands, :payment, :boolean, default: false
  end
end
