class Campsite < ApplicationRecord
  belongs_to :facility
  has_one :facility_address

  def overnight
    self.type_of_use == "Overnight"
  end

  def dayuse
    self.type_of_use == "Day"
  end

  def accessible?
    self.campsite_accessible = "t"
  end

end
