class MissionsController < ApplicationController

  def show
  @mission = Mission.new
  @mission = Mission.find(params[:id])
    
  def index
    @missions = Mission.all
  end
end
