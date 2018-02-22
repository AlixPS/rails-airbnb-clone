class Car < ApplicationRecord
  CATEGORIES = %w[Citadine Compacte Monospace SUV Utilitaire].freeze
  MOTEUR = %w[Electrique Essence Diesel].freeze
  BOITE = %w[Auto Manuel].freeze

  belongs_to :user
  has_many :rentals
  has_many :reviews, through: :rentals
  mount_uploader :photo, PhotoUploader

  validates :brand, presence: true
  validates :model, presence: true
  validates :category, presence: true,
                       inclusion: { in: CATEGORIES }
  validates :moteur, presence: true, inclusion: { in: MOTEUR }
  validates :boite, presence: true, inclusion: { in: BOITE }
end

