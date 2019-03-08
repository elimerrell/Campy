class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :facility
  has_many :hearts

  validates :rating, presence: true
  validates_inclusion_of :rating, :in => 1..5
  validates :title, presence: true
  validates :comment, presence: true

  def self.avg_rating
    self.average(:rating)
  end


  def self.most_hearts
    most_count = 0
    comment_with_most = nil
    tally = Hash.new(0)
    Comment.all.each do |comment|
      tally[comment.hearts] += 1
      if tally[comment.hearts] > most_count
        most_count = tally[comment.hearts]
        comment_with_most = comment
      end
    end
    comment_with_most
  end
end
