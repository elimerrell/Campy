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

  def has_comment?
    self.comments.empty?
  end

  # def self.most_comments
  #   most_count = 0
  #   facility_with_most = nil
  #   tally = Hash.new(0)
  #   Facility.all.each do |facility|
  #     tally[facility.comments] += 1
  #     if tally[facility.comments] > most_count
  #       most_count = tally[facility.comments]
  #       facility_with_most = facility
  #     end
  #   end
  #   facility_with_most
  # end

  def avg_rating
    rating = []
    sum = 0
      self.comments.collect do |comment|
        rating << comment.rating
       end
      sum = rating.inject(:+)
      total_rating = sum / rating.length
  end



   def self.highest_rated
     facilities = Facility.all.each {|facility|}
     byebug
      facilities.max_by{|x| x.avg_rating}
    end

end
