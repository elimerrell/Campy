class Facility < ApplicationRecord
  has_one :facility_address
  has_many :campsites


  def self.search(query)
    if query
      facility = FacilityAddress.where(AddressStateCode: query)
      if facility
         self.where(id: facility)
      else
        Facility.all
      end
    else
      Facility.all
    end
  end

end
