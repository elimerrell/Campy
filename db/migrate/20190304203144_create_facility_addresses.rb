class CreateFacilityAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :facility_addresses do |t|
      t.bigint :facility_address_id, primary: true 
      t.bigint :facility_id
      t.string :FacilityStreetAddress1
      t.string :FacilityStreetAddress2
      t.string :FacilityStreetAddress3
      t.string :City
      t.integer :PostalCode
      t.string  :AddressStateCode
      t.string  :AddressCountryCode
    end
  end
end
