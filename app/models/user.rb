class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :rentals, through: :cars
  has_many :cars
  mount_uploader :avatar_photo, PhotoUploader
  mount_uploader :driver_licence, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
