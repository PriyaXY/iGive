class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @mission = Mission.all
    #need to remove missions from index page if the date has passed
    #@completed_missions = @mission.where('start_date < ?', Date.today)
  end

  def dashboard
    @pending_volunteer_missions = current_user.bookings.where(status: "pending")
    @accepted_volunteer_missions = current_user.bookings.where(status: "accepted")
    #@volunteer_completed_missions = @accepted_volunteer_bookings.where('start_date < ?', Date.today)
    if current_user.charity
      @pending_charity_applications = current_user.charity_bookings.where(status: "pending")
      @accepted_charity_applications = current_user.charity_bookings.where(status: "accepted")
    end
  end
end
