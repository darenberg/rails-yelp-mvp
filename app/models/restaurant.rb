class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  CATEGORIES = %w[french italian japanese chinese belgian].freeze
  validates :category, inclusion: { in: CATEGORIES, message: 'is not a valid category' }
end
