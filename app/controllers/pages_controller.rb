class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @mission = Mission.all
  end

  def dashboard
    @missions_completed = Mission.select { |mission| mission.mission_completed? }
    @charity_missions = current_user.missions
    volunteer_bookings = current_user.bookings
    @pending_volunteer_bookings = []
    @accepted_volunteer_bookings = []
    volunteer_bookings.each { |booking| @pending_volunteer_bookings << booking if booking.status == "pending" }
    volunteer_bookings.each { |booking| @accepted_volunteer_bookings << booking if booking.status == "accepted" }
    @pending_charity_bookings = []
    @accepted_charity_bookings = []
    set_charity_bookings.each { |booking| @pending_charity_bookings << booking if booking.status == "pending" }
    set_charity_bookings.each { |booking| @accepted_charity_bookings << booking if booking.status == "accepted" }
  end

  private


  def set_charity_bookings
    missions = current_user.charity.missions
    charity_bookings = []
    missions.each do |mission|
      mission.bookings.each { |booking| charity_bookings << booking }
    end
    return charity_bookings
  end

end
