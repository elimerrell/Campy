class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :facility

  def self.avg_rating
    self.average(:rating)
  end 
  
  end
