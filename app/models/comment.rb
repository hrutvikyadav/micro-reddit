class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :body, length: { maximum: 100 }, presence: true
end
