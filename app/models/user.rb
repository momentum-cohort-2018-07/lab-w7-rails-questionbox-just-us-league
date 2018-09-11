class User < ApplicationRecord
  has_secure_token :api_token
  has_secure_password
  has_many :questions
  has_many :answers
  has_many :votes
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
end
