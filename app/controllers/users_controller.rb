class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @photo = Photo.find_by(user_id: current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
    @photo = Photo.find_by(user_id: current_user.id)
  end

  def update
    #"user"=>{"photo_id"=>""}
    #Need to update the photo ID coloum in the USERS table with the id of the phote they have selected
    
    @user = User.update(photo_params)
    redirect_to user_url
  end

  private

  def photo_params
    params.permit(:photo_id).merge(photo_id: Photo.find_by(user_id: current_user.id))
  end

end
