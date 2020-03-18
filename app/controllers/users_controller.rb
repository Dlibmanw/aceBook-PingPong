class UsersController < ApplicationController
  def show
    if User.exists?(params[:id])
      @user = User.find(params[:id])
      @photos = Photo.where(user_id: @user.id)
    else
      flash[:alert] = "Error: User doesn't exist"
      redirect_to posts_path
    end
  end
end
