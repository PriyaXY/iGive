class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @mission = Mission.all
    #need to remove missions from index page if the date has passed
    #@completed_missions = @mission.where('start_date < ?', Date.today)
  end

  def update_avatar
    @user = current_user
    @user.update(image: params[:image])
    redirect_to request.referer
  end

  def chats

  end

  def dashboard
    @charity = current_user.charity
    @pending_volunteer_missions = current_user.bookings.where(status: "pending").includes(:mission).where('missions.start_date > ?', Date.today).references(:mission)
    bookings = Booking.all
    accepted_volunteer_bookings = current_user.bookings.where(status: "accepted")
    @accepted_volunteer_missions = accepted_volunteer_bookings.includes(:mission).where('missions.start_date > ?', Date.today).references(:mission)
     if current_user.bookings.includes(:mission).where('missions.start_date < ?', Date.today).references(:mission).nil?
      @volunteer_completed_missions = []
    else
      @volunteer_completed_missions = bookings.includes(:mission).where('missions.start_date < ?', Date.today).references(:mission)
    end
    if current_user.charity
      @pending_charity_applications = current_user.charity_bookings.where(status: "pending")
      @accepted_charity_applications = current_user.charity_bookings.where(status: "accepted")
    end
  end
end
