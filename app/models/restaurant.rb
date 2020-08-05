class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: Restaurant::CATEGORIES,
    message: "%{value} is not a valid category" }
end
