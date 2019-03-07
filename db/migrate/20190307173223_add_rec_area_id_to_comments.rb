class AddRecAreaIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :rec_area_id, :integer
  end
end
