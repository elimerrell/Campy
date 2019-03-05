require 'json'

def parse_json(file)
  json_from_file = File.read(file)
  JSON.parse(json_from_file)
end
#
# puts "Populating facilities"
# hash = parse_json('db/seed_data/Facilities_API_v1.json')
# hash["RECDATA"].each do |facility|
#     Facility.find_or_create_by(
#      id: facility["FacilityID"],
#      parent_rec_area_id: facility["ParentRecAreaID"],
#      facility_name: facility["FacilityName"],
#      facility_description: facility["FacilityDescription"],
#      facility_type_description: facility["FacilityTypeDescription"],
#      facility_use_fee_description: facility["FacilityUseFeeDescription"],
#      facility_directions: facility["FacilityDirections"],
#      facility_phone: facility["FacilityPhone"],
#      facility_email: facility["FacilityEmail"],
#      facility_reservation_url: facility["FacilityReservationURL"],
#      facility_longitude: facility["FacilityLongitude"],
#      facility_latitude: facility["FacilityLatitude"],
#      reservable: facility["Reservable"]
#   )
#   end
#   puts "Facilities populuated"
#
#   puts "Populating facility addresses"
#   hash = parse_json('db/seed_data/FacilityAddresses_API_v1.json')
#   hash["RECDATA"].each do |facility|
#     FacilityAddress.find_or_create_by(
#       id: facility["FacilityAddressID"],
#       facility_id: facility["FacilityID"],
#       facility_street_address1: facility["FacilityStreetAddress1"],
#       facility_street_address2: facility["FacilityStreetAddress2"],
#       facility_street_address3: facility["FacilityStreetAddress3"],
#       city: facility["City"],
#       postal_code: facility["PostalCode"],
#       address_state_code: facility["AddressStateCode"],
#       address_country_code: facility["AddressCountryCode"]
#     )
#   end
#
#   puts "Facility addresses populated"
#
#   puts "Populating Campsites"
#   hash = parse_json('db/seed_data/Campsites_API_v1.json')
#   hash["RECDATA"].each do |campsite|
#    Campsite.find_or_create_by(
#     id: campsite["CampsiteID"],
#     facility_id: campsite["FacilityID"],
#     campsite_name: campsite["CampsiteName"],
#     type_of_use: campsite["TypeOfUse"],
#     loop: campsite["Loop"],
#     campsite_accessible: campsite["CampsiteAccessible"],
#     campsite_longitude: campsite["CampsiteLongitude"],
#     campsite_latitude: campsite["CampsiteLatitude"]
# )
#   end
# puts "Campsites populated"

# puts "Populating RecAreas"
# hash = parse_json('db/seed_data/RecAreas_API_v1.json')
# hash["RECDATA"].each do |area|
#  RecArea.find_or_create_by(
#     id: area["RecAreaID"],
#     org_rec_area_id: area["OrgRecAreaID"],
#     rec_area_name: area["RecAreaName"],
#     rec_area_description: area["RecAreaDescription"],
#     rec_area_directions: area["RecAreaDirections"],
#     rec_area_phone: area["RecAreaPhone"],
#     rec_area_email: area["RecAreaEmail"],
#     rec_area_longitude: area["RecAreaLongitude"],
#     rec_area_latitude: area["RecAreaLatitude"],
#     keywords: area["Keywords"],
#     reservable: area["Reservable"]
#     )
# end

u1 = User.create(first_name: 'Bob', last_name: 'McKenzie', location: 'Great White North')
u1 = User.create(first_name: 'Eli', last_name: 'Merrell', location: 'Seattle')
u1 = User.create(first_name: 'Steve', last_name: 'Brule', location: 'San Diegro')
u1 = User.create(first_name: 'Jim', last_name: 'Nantz', location: 'Texas')
u1 = User.create(first_name: 'Doug', last_name: 'McKenzie', location: 'Toronto')
u1 = User.create(first_name: 'Bill', last_name: 'Nye', location: 'Seattle')
