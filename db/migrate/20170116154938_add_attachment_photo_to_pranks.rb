class AddAttachmentPhotoToPranks < ActiveRecord::Migration
  def self.up
    change_table :pranks do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :pranks, :photo
  end
end
