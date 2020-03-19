class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @profile_photo = Photo.find_by(id: @user.photo_id)
  end

  def edit
    @user = User.find(current_user.id)
    @photo = Photo.find(params[:format])
    session[:photo_id_to_pass] = @photo.id
  end

  def update
    #"user"=>{"photo_id"=>""}
    #Need to update the photo ID coloum in the USERS table with the id of the phote they have selected
    @user = User.find(current_user.id)
    @user.update(photo_params)
    redirect_to user_url
  end

  private

  def photo_params
    params.permit(:photo_id).merge(photo_id: session[:photo_id_to_pass])
  end

end
