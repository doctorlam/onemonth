class AddAttachmentImageToProposals < ActiveRecord::Migration
  def self.up
    change_table :proposals do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :proposals, :image
  end
end
