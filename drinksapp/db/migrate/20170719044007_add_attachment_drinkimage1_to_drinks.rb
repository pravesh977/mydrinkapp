class AddAttachmentDrinkimage1ToDrinks < ActiveRecord::Migration[5.1]
  def self.up
    change_table :drinks do |t|
      t.attachment :drinkimage1
    end
  end

  def self.down
    remove_attachment :drinks, :drinkimage1
  end
end
