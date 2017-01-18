class AddValidateOrderSendToCommands < ActiveRecord::Migration
  def change
    add_column :commands, :OrderSend, :boolean, default: false
  end
end
