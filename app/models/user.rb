class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :missions, through: :bookings
  has_one :charity
  # has_many :experiences
  # has_many :missions through: :experiences
end
