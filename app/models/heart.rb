class Heart < ApplicationRecord
  validates :user_id, uniqueness: { scope: :comment_id }
  belongs_to :comment
  belongs_to :user
end
