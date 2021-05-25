class AddAttachmentImageToFirmwares < ActiveRecord::Migration
  def self.up
    change_table :firmwares do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :firmwares, :image
  end
end
