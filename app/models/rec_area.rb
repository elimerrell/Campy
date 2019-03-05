class RecArea < ApplicationRecord
  has_many :rec_area_facilities
  has_many :facilities, through: :rec_area_facilities
end
