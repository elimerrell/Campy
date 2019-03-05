class Facility < ApplicationRecord
  has_one :facility_address
  has_many :campsites
  has_many :rec_area_facilities
  has_many :rec_areas, through: :rec_area_facilities
  has_many :comments 
end
