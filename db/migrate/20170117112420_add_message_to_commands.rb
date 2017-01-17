class AddMessageToCommands < ActiveRecord::Migration
  def change
    add_column :commands, :message, :string
  end
end
