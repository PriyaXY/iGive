class MissionsController < ApplicationController

  def show
  @mission = Mission.new
  @mission = Mission.find(params[:id])
  end
end
