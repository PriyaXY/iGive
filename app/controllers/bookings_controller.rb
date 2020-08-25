class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @mission = Mission.find(params[:mission_id])
    @mission.booking = @mission
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def booking_status
  #   booking = Booking.find(params[:booking])
  #   booking.status = "accepted"
  #   if booking.save
  #     redirect_to dashboard_path
  #   end
  # end

  private

  def booking_params
    params.require(:booking).permit(:status, :mission_id, :user_id)
  end
end
