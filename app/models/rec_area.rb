class RecArea < ApplicationRecord
  has_many :rec_area_facilities
  has_many :facilities, through: :rec_area_facilities
  has_many :comments, as: :commentable

  def has_facility?
    self.facilities.count > 0
  end

  def has_keywords?
    self.keywords.empty? == false
  end

end
