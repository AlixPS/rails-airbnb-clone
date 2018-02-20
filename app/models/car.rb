class Car < ApplicationRecord
  CATEGORIES = %w[Citadine Compacte Monospace SUV Utilitaire].freeze

  belongs_to :user
  has_many :rentals
  has_many :reviews, through: :rentals

  validates :brand, presence: true
  validates :model, presence: true
  validates :category, presence: true,
                       inclusion: { in: CATEGORIES }
end

