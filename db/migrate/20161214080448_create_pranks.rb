class CreatePranks < ActiveRecord::Migration
  def change
    create_table :pranks do |t|
      t.string :name
      t.string :description
      t.string :text
      t.date :dateCreation
      t.text :photo
      t.belongs_to :prank_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end