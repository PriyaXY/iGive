class BookingsController < ApplicationController

  def index
  end

  def create
    @booking = Booking.new()
    @mission = Mission.find(params[:mission_id])
    @booking.mission = @mission
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    end
  end

  def accept_booking
    booking = Booking.find(params[:booking])
    booking.status = "accepted"
    if booking.save!
      redirect_to dashboard_path
    end
  end
end
