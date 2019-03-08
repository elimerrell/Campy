class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :facility

  validates :rating, presence: true
  validates_inclusion_of :rating, :in => 1..5
  validates :title, presence: true
  validates :comment, presence: true

  def self.avg_rating
    self.average(:rating)
  end
end
