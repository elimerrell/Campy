class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :facility
  belongs_to :rec_area

  def self.avg_rating
    self.average(:rating)
  end 
  
  end
