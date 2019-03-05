class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities, id:false do |t|
      t.primary_key :id
      t.integer :parent_rec_area_id
      t.string :facility_name
      t.text :facility_description
      t.text :facility_type_description
      t.text :facility_use_fee_description
      t.text :facility_directions
      t.string :facility_phone
      t.string :facility_email
      t.string :facility_reservation_url
      t.float :facility_longitude
      t.float :facility_latitude
      t.boolean :reservable

      t.timestamps
    end
  end
end
