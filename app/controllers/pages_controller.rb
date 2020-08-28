class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @mission = Mission.all
    #need to remove missions from index page if the date has passed
    #@completed_missions = @mission.where('start_date < ?', Date.today)
  end

  def dashboard
    @charity = current_user.charity
    @pending_volunteer_missions = current_user.bookings.where(status: "pending").includes(:mission).where('missions.start_date > ?', Date.today).references(:mission)
    accepted_volunteer_bookings = current_user.bookings.where(status: "accepted")
    @accepted_volunteer_missions = accepted_volunteer_bookings.includes(:mission).where('missions.start_date > ?', Date.today).references(:mission)
    @volunteer_completed_missions = current_user.bookings.includes(:mission).where('missions.start_date < ?', Date.today).references(:mission)
    if current_user.charity
      @pending_charity_applications = current_user.charity_bookings.where(status: "pending")
      @accepted_charity_applications = current_user.charity_bookings.where(status: "accepted")
    end
  end
end
