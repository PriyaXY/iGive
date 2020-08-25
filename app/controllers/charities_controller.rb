class CharitiesController < ApplicationController

  def show
  @charity = Charity.new
  @charity = Charity.find(params[:user_id])
  end
end
