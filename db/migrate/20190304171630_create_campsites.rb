class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites, id:false do |t|
      t.primary_key :id
      t.bigint :facility_id
      t.string :campsite_name
      t.string :type_of_use
      t.string :loop
      t.string :campsite_accessible
      t.float :campsite_longitude
      t.float :campsite_latitude
    end
  end
end
