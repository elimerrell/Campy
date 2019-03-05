class CreateRecAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :rec_areas, id:false do |t|
      t.primary_key :id
      t.bigint :org_rec_area_id
      t.string :rec_area_name
      t.text :rec_area_description
      t.text :rec_area_directions
      t.string :rec_area_phone
      t.string :rec_area_email
      t.float :rec_area_longitude
      t.float :rec_area_latitude
      t.string :keywords
      t.boolean :reservable
      t.timestamps
    end
  end
end
