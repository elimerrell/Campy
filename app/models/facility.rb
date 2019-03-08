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


  def self.most_comments
    most_count = 0
    facility_with_most = nil
    Facility.all.each do |facility|
      if facility.comments.count > most_count
        most_count = facility.comments.count
        facility_with_most = facility
      end

     end
      facility_with_most
  end

  def avg_rating
    rating = []
    sum = 0
      self.comments.collect do |comment|
        rating << comment.rating
       end
      sum = rating.inject(:+)
      total_rating = sum / rating.length
      end

        rating << comment.rating     
        end 
      sum = rating.inject(:+)
      return total_rating = sum / rating.length
  end 
     

   def self.highest_rated
     facilities = Facility.all.each {|facility|}
      facilities.max_by{|x| x.avg_rating}
    end 
  
    def stars(number)
      if number == 1
         "⭐ "
      elsif number == 2
         "⭐ ⭐ "
      elsif number == 3 
         "⭐ ⭐ ⭐ " 
      elsif number == 4 
         "⭐ ⭐ ⭐ ⭐ " 
      else 
         "⭐ ⭐ ⭐ ⭐ ⭐ "
      end 
    end
end
