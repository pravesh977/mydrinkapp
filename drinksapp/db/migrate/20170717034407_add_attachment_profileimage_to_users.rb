class AddAttachmentProfileimageToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :profileimage
    end
  end

  def self.down
    remove_attachment :users, :profileimage
  end
end
