class MissionsController < ApplicationController
  before_action :icon_count, only: [:index, :show]

  def new
    redirect_to root_path if current_user.charity.nil?
    @mission = Mission.new
  end

  def show
    @mission = Mission.find(params[:id])
    @charity = @mission.charity

    @markers = [
      {
        lat: @mission.latitude,
        image_url: helpers.asset_url('iGive-logo.png'),
        lng: @mission.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { mission: @mission })
      }]
  end

  def index
    @missions = Mission.all
    @missions = Mission.geocoded

    @markers = @missions.map do |mission|
      {
        lat: mission.latitude,
        lng: mission.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { mission: mission })
      }
    end

    if params[:query].nil? || (params[:query] == "")
      @missions = Mission.all
    else
      params[:query]
      @missions = @missions.near(params[:query], 20)
    end
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
    if current_user.charity.missions.update(strong_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def icon_count
    accepted_volunteer_bookings = current_user.bookings.where(status: "accepted")
    @accepted_volunteer_missions = accepted_volunteer_bookings.includes(:mission).where('missions.start_date > ?', Date.today).references(:mission)
  end

  def strong_params
    params.require(:mission).permit(:start_date, :title, :description, :address, :number_of_volunteers, photos: [])
  end
end
