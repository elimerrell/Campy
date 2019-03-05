class Campsite < ApplicationRecord
  belongs_to :facility

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
