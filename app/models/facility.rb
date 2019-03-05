class Facility < ApplicationRecord
  has_one :facility_address
  has_many :campsites
  has_many :rec_area_facilities
  has_many :rec_areas, through: :rec_area_facilities
  has_many :comments

  def is_campground
    self.facility_type_description == "Campground"
  end

  def is_facility
    self.facility_type_description == "Facility"
  end

  def has_campsites?
    self.campsites.empty? != true
  end

  def campsite_count
    self.campsites.count
  end

  def self.most_comments
    most_count = 0
    facility_with_most = nil
    tally = Hash.new(0)
    Facility.all.each do |facility|
      tally[facility.comments] += 1
      if tally[facility.comments] > most_count
        most_count = tally[facility.comments]
        facility_with_most = facility
      end
    end
    facility_with_most
  end

  def highest_rated

    count_hash = Hash.new(0)

  end
end
