class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :mission

  validates :status, presence: true

  has_one :chatroom
  after_create :generate_chatroom

  private

  def generate_chatroom
    Chatroom.create(user: self.user, booking: self)
  end
end
