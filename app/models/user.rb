class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, length: { minimum: 8 }, uniqueness: true, presence: true
  validates_associated :posts
end