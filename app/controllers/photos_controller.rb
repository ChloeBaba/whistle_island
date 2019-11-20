class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @island = Island.find(params[:island_id])
    authorize @photo
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.island = Island.find(params[:island_id])
    if @photo.save!
      redirect_to island_path(@photo.island)
    else
      render :new
    end
    authorize @photo
  end

  private

  def photo_params
    params.require(:photo).permit(:photo_path)
  end
end
