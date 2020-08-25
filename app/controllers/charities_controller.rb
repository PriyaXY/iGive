class CharitiesController < ApplicationController
  def new
    @charity = Charity.new
  end

  def create
    @charity = Charity.new(charity_params)
    @charity.user = current_user
    if @charity.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def charity_params
    params.require(:charity).permit(:user_id, :name, :phone_number, :description, :website)
  end
end
