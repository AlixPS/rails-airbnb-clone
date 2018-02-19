class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :locations, through: :cars

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
