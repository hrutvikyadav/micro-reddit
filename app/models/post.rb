class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates_associated :comments
  validates :body, length: { minimum: 10, maximum: 100 }, presence: true
end
