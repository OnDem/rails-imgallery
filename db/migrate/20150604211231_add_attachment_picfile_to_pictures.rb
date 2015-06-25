class AddAttachmentPicfileToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :picfile
    end
  end

  def self.down
    remove_attachment :pictures, :picfile
  end
end
