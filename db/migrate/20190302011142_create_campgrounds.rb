class CreateCampgrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :campgrounds do |t|
      t.string :name
      t.text :desciprtion
      t.string :link
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
