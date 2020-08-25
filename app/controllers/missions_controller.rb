class MissionsController < ApplicationController
  def new
    redirect_to root_path if current_user.charity.nil?
    @mission = Mission.new
  end

  def show

    @mission = Mission.new
    @charity = Mission.find(params[:id])
  end

  def index
    @missions = Mission.all
  end

  def create
    @mission = Mission.new(strong_params)
    @charity = current_user.charity
    @mission.charity = @charity
    if @mission.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  def update
    if current_user.missions.update(strong_params)
      redirect_to home_path
    else
      render :edit
    end
  end



  private

  def strong_params
    params.require(:mission).permit(:start_date, :title, :description, :address, :number_of_volunteers)
  end
end
