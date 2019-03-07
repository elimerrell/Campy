class Comment < ApplicationRecord
  has_one :user
  belongs_to :commentable, polymorphic: true, optional: true

  def self.avg_rating
    self.average(:rating)
  end

  end
