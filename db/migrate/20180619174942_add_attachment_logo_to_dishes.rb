class AddAttachmentLogoToDishes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :dishes do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :dishes, :logo
  end
end
