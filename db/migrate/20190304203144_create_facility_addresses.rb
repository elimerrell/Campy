class CreateFacilityAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :facility_addresses, id:false do |t|
      t.primary_key :id
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
