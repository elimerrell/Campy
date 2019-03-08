class User < ApplicationRecord
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  has_many :comments
  has_many :hearts, dependent: :destroy


  def full_name
    self.first_name + " " + self.last_name
  end

  def has_status?
    self.status != nil
  end

  def self.most_comments
    most_count = 0
    user_with_most = nil
    User.all.each do |user|
      if user.comments.count > most_count
        most_count = user.comments.count
        user_with_most = user
      end
    end
    user_with_most
  end

  def is_me?
    self.id == @current_user.id
  end


    # creates a new heart row with comment_id and user_id
  def heart!(comment)
    self.hearts.create!(comment_id: comment.id)
  end

  # destroys a heart with matching comment_id and user_id
  def unheart!(comment)
    heart = self.hearts.find_by_comment_id(comment.id)
    heart.destroy!
  end

  # returns true of false if a comment is hearted by user
  def heart?(comment)
    self.hearts.find_by_comment_id(comment.id)
  end

  def stars(number)
    if number == 1
       "⭐  "
    elsif number == 2
       "⭐ ⭐  "
    elsif number == 3 
       "⭐ ⭐ ⭐  " 
    elsif number == 4 
       "⭐ ⭐ ⭐ ⭐  " 
    else 
       "⭐ ⭐ ⭐ ⭐ ⭐  "
    end 
  end 
end
