class Mission < ApplicationRecord
  belongs_to :charity
  has_many :bookings
  has_many :users, through: :bookings
  # has_many :experiences
end
