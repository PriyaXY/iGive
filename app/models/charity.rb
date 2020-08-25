class Charity < ApplicationRecord
  belongs_to :user
  has_many :missions

  validates :name, presence: true, uniqueness: true
  validates :phone_number, presence: true, length: { maximum: 500 }
  validates :description, presence: true
  validates :website, presence: true
end
