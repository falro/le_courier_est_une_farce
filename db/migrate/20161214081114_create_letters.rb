class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :name
      t.text :description
      t.belongs_to :type_letter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
