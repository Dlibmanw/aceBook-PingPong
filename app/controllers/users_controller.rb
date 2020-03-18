class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find(params[:id])
    @photo = Photo.find(params[:id])
  end 

  def update
    @user = User.update(photo_params)
    redirect_to users_url
  end

  private

  def photo_params
    params.permit(:photo_id)
  end

end
