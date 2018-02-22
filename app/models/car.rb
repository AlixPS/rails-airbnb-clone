class Car < ApplicationRecord
  CATEGORIES = %w[Citadine Compacte Monospace SUV Utilitaire].freeze

  include AlgoliaSearch

  algoliasearch do
    attribute :brand, :model, :category
  end

  belongs_to :user
  has_many :rentals
  has_many :reviews, through: :rentals
  mount_uploader :photo, PhotoUploader

  validates :brand, presence: true
  validates :model, presence: true
  validates :category, presence: true,
                       inclusion: { in: CATEGORIES }
end

