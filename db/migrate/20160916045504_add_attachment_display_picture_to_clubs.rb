class AddAttachmentDisplayPictureToClubs < ActiveRecord::Migration
  def self.up
    change_table :clubs do |t|
      t.attachment :display_picture
    end
  end

  def self.down
    remove_attachment :clubs, :display_picture
  end
end
