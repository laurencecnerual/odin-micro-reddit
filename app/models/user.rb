class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, length: { minimum: 4 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }
end
