class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|
      t.bigint :campsite_id, primary: true 
      t.bigint :facility_id
      t.string :TypeOfUse
      t.string :Loop
      t.string :CampsiteAccessible
      t.float :CampsiteLongitude
      t.float :CampsiteLatitude
    end
  end
end
