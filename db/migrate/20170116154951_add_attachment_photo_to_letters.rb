class AddAttachmentPhotoToLetters < ActiveRecord::Migration
  def self.up
    change_table :letters do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :letters, :photo
  end
end
