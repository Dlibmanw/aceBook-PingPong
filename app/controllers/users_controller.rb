class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(current_user.id)
    @photo = Photo.find(params[:id])
  end 

  def update
    @user = User.update(photo_params)
    redirect_to user_url
  end

  private

  def photo_params
    params.permit(:photo_id).merge(photo_id: params[:id])
  end

end
