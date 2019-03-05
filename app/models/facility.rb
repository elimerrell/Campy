class Facility < ApplicationRecord
  has_one :facility_address
  has_many :campsites

end
