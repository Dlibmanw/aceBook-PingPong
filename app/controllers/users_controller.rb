class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @photo = Photo.find_by(user_id: current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
    @photo = Photo.find(params[:id])
  end 

  def update  # This should be 5 not 7 in table
    @user = User.update(photo_params)
    redirect_to user_url
  end

  private

  def photo_params
    p params[:id]
    params.permit(:photo_id).merge(photo_id: params[:id])
  end

end
