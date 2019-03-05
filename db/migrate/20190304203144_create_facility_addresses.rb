class CreateFacilityAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :facility_addresses, id:false do |t|
      t.primary_key :id
      t.bigint :facility_id
      t.string :facility_street_address1
      t.string :facility_street_address2
      t.string :facility_street_address3
      t.string :city
      t.integer :postal_code
      t.string  :address_state_code
      t.string  :address_country_code
    end
  end
end
