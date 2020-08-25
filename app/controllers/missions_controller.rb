class MissionsController < ApplicationController

  def show
  @mission = Mission.new
  @mission = Mission.find(params[:id])
  end

  def index
    @missions = Mission.all
  end
end
