class Mission < ApplicationRecord
  belongs_to :charity
  has_many :bookings
  has_many :users, through: :bookings
  # has_many :experiences
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true, length: { maximum: 1000 }
  validates :address, presence: true
  validates :number_of_volunteers, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :start_date, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
