class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites, id:false do |t|
      t.primary_key :id
      t.bigint :facility_id
      t.string :CampSiteName
      t.string :TypeOfUse
      t.string :Loop
      t.string :CampsiteAccessible
      t.float :CampsiteLongitude
      t.float :CampsiteLatitude
    end
  end
end
