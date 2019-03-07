class User < ApplicationRecord
  has_secure_password
  has_many :comments

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


end
