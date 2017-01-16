class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.belongs_to :prank_type, index: true, foreign_key: true
      t.belongs_to :prank, index: true, foreign_key: true
      t.belongs_to :letter, index: true, foreign_key: true
      t.belongs_to :type_letter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
