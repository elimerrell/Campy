class AddStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :status, :string
    add_column :users, :user_img, :string
    add_column :users, :bio, :text 
  end
end
