class AddAttachmentScreenshotToStartupps < ActiveRecord::Migration
  def self.up
    change_table :startupps do |t|
      t.attachment :screenshot
    end
  end

  def self.down
    remove_attachment :startupps, :screenshot
  end
end
