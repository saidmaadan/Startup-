class AddAttachmentImageLogoToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :image_logo
    end
  end

  def self.down
    remove_attachment :events, :image_logo
  end
end
