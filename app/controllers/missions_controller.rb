class MissionsController < ApplicationController
  def new
    @mission = Mission.new
  end

  def show
    @mission = Mission.new
    @mission = Mission.find(params[:id])
  end

  def index
    @missions = Mission.all
  end

  def create
    @mission = Mission.new(strong_params)
    # @boat = Boat.find(params[:boat_id])
    # @booking.boat = @boat
    # @booking.user = current_user
    @charity = Charity.find(params[:charity_id])
    @mission.charity = @charity
    @mission.user = current_user
    if @mission.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:mission).permit(:start_date, :title, :description, :address, :number_of_volunteers)
  end
end
