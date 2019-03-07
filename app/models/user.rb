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
    tally = Hash.new(0)
    User.all.each do |user|
      tally[user.comments] += 1
      if tally[user.comments] > most_count
        most_count = tally[user.comments]
        user_with_most = facility
      end
    end
    user_with_most
  end

end
