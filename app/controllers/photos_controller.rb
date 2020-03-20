class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to photos_url
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.update(photo_params)
    redirect_to photos_url
  end

  def destroy
    @photo = Photo.find(params[:id])
    if @photo.id == current_user.photo_id 
      flash[:alert] = "Can't delete current profile picture, Please change your profile picture"
    else 
      @photo.destroy
    end 
    redirect_to photos_path
  end

  private

  def photo_params
    params.require(:photo).permit(:image).merge(user_id: current_user.id)
  end

end
