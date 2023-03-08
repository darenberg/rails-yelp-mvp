class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  CATEGORIES = [0, 1, 2, 3, 4, 5].freeze
  validates :rating, inclusion: { in: CATEGORIES, message: 'is not a valid rating' }
end
