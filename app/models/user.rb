class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :missions, through: :bookings
  has_one :charity
  has_many :charity_missions, through: :charity, source: :missions
  has_many :charity_bookings, through: :charity_missions, source: :bookings
  # has_many :experiences
  # has_many :missions through: :experiences

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :chatrooms
  has_many :messages
  has_many :booking_chatrooms, through: :charity_bookings, source: :chatroom
end
