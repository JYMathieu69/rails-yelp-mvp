class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  ALL_CATEGORIES = %w[chinese italian japanese french belgian].freeze

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ALL_CATEGORIES }
end

