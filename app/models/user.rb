class User < ApplicationRecord
  has_secure_password 
  has_many :comments

  # def password=(password)
  #   encrypted_hash = (Digest::SHA256.base64digest(password))
  #   password_digest=(encrypted_hash)
  #   self.save
  # end
  #
  # def authenticated_password(password)
  #   self.password_digest = (Digest::SHA256.base64digest(password))
  # end

end
