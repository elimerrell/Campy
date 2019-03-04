require 'json'

def parse_json(file)
  json_from_file = File.read(file)
  JSON.parse(json_from_file)
end

puts "Populating facilities"
hash = parse_json('db/seed_data/Facilities_API_v1.json')
hash["RECDATA"].each do |facility|
    Facility.find_or_create_by(
     facility_id: facility["FacilityID"],
     ParentRecAreaID: facility["ParentRecAreaID"],
     FacilityName: facility["FacilityName"],
     FacilityDescription: facility["FacilityDescription"],
     FacilityTypeDescription: facility["FacilityTypeDescription"],
     FacilityUseFeeDescription: facility["FacilityUseFeeDescription"],
     FacilityDirections: facility["FacilityDirections"],
     FacilityPhone: facility["FacilityPhone"],
     FacilityEmail: facility["FacilityEmail"],
     FacilityReservationURL: facility["FacilityReservationURL"],
     FacilityLongitude: facility["FacilityLongitude"],
     FacilityLatitude: facility["FacilityLatitude"],
     Reservable: facility["Reservable"]
  )
  end
  puts "Facilities populuated"

  puts "Populating facility addresses"
  hash = parse_json('db/seed_data/FacilityAddresses_API_v1.json')
  hash["RECDATA"].each do |facility|
    FacilityAddress.find_or_create_by(
      FacilityAddressID: facility["FacilityAddressID"],
      facility_id: facility["FacilityID"],
      FacilityStreetAddress1: facility["FacilityStreetAddress1"],
      FacilityStreetAddress2: facility["FacilityStreetAddress2"],
      FacilityStreetAddress3: facility["FacilityStreetAddress3"],
      City: facility["City"],
      PostalCode: facility["PostalCode"],
      AddressStateCode: facility["AddressStateCode"],
      AddressCountryCode: facility["AddressCountryCode"]
    )
  end

  puts "Facility addresses populated"

  puts "Populating Campsites"
  hash = parse_json('db/seed_data/Campsites_API_v1.json')
  hash["RECDATA"].each do |campsite|
   Campsite.find_or_create_by(
    CampsiteID: campsite["CampsiteID"],
    facility_id: campsite["FacilityID"],
    TypeOfUse: campsite["TypeOfUse"],
    Loop: campsite["Loop"],
    CampsiteAccessible: campsite["CampsiteAccessible"],
    CampsiteLongitude: campsite["CampsiteLongitude"],
    CampsiteLatitude: campsite["CampsiteLatitude"]
)
  end
puts "Campsites populated"
