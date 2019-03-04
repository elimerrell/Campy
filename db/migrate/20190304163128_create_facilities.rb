class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.integer :facility_id, primary: true 
      t.integer :ParentRecAreaID
      t.string :FacilityName
      t.text :FacilityDescription
      t.text :FacilityTypeDescription
      t.text :FacilityUseFeeDescription
      t.text :FacilityDirections
      t.string :FacilityPhone
      t.string :FacilityEmail
      t.string :FacilityReservationURL
      t.float :FacilityLongitude
      t.float :FacilityLatitude
      t.boolean :Reservable

      t.timestamps
    end
  end
end
