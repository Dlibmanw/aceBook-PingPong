class UsersController < ApplicationController
  def show
    if User.exists?(params[:id])
      @user = User.find(params[:id])
      @photos = Photo.where(user_id: @user.id)
      @profile_photo = Photo.find_by(id: @user.photo_id)
    else
      flash[:alert] = "Error: User doesn't exist"
      redirect_to posts_path
    end
  end

  def edit
    @user = User.find(current_user.id)
    @photo = Photo.find(params[:format])
    session[:photo_id_to_pass] = @photo.id
  end

  def update
    @user = User.find(current_user.id)
    @user.update(photo_params)
    redirect_to user_url
  end

  private

  def photo_params
    params.permit(:photo_id).merge(photo_id: session[:photo_id_to_pass])
  end

end
