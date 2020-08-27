class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @mission = Mission.all
  end

  def dashboard
    @pending_volunteer_bookings = current_user.bookings.where(status: "pending")
    @accepted_volunteer_bookings = current_user.bookings.where(status: "accepted")
    @volunteer_comlpeted_missions = @accepted_volunteer_bookings.where('start_date < ?', Date.today)
    if current_user.charity
      @pending_charity_bookings = current_user.charity_bookings.where(status: "pending")
      @accepted_charity_bookings = current_user.charity_bookings.where(status: "accepted")
    end
  end
end
