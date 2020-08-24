class Charity < ApplicationRecord
  belongs_to :user
  has_many :missions
end
