class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @mission = Mission.all
  end

  def dashboard
    @my_mission = current_user.missions
    @missions_ive_posted = current_user.missions
    @missions_people_applied = current_user.missions_bookings
  end
end
