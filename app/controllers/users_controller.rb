class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit 
    @photo = Photo.find(params[:id])
  end 

  def update
    @user = User.update(photo_params)
    redirect_to users_url
  end

  private

  def photo_params
    params.require(:photo).permit(:photo_id)
  end

end
