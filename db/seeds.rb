# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'json'

  #
  #  json_from_file = File.read('db/Activities_API_v1.json')
  #  hash = JSON.parse(json_from_file)
  #  hash["RECDATA"].each do |array|
#   # end
#   puts "Dropping tables"
# drop_table :facilities, if_exists: true
# drop_table :campsites, if_exists: true
# puts "Tables dropped"

  puts "Populating facilities"
   json_from_file = File.read('db/seed_data/Facilities_API_v1.json')
   hash = JSON.parse(json_from_file)
   hash["RECDATA"].each do |facility|
    Facility.find_or_create_by(
     FacilityID: facility["FacilityID"],
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

  puts "Populating Campsites"
  json_from_file = File.read('db/seed_data/Campsites_API_v1.json')
  hash = JSON.parse(json_from_file)
  hash["RECDATA"].each do |campsite|
   Campsite.find_or_create_by(
    CampsiteID: campsite["CampsiteID"],
    FacilityID: campsite["FacilityID"],
    TypeOfUse: campsite["TypeOfUse"],
    Loop: campsite["Loop"],
    CampsiteAccessible: campsite["CampsiteAccessible"],
    CampsiteLongitude: campsite["CampsiteLongitude"],
    CampsiteLatitude: campsite["CampsiteLatitude"]
)
end
puts "Campsites populated"
