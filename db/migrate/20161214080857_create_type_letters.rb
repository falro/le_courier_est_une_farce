class CreateTypeLetters < ActiveRecord::Migration
  def change
    create_table :type_letters do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end