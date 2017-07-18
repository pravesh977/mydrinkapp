class AddUserIdToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :user_id, :integer
  end
end
