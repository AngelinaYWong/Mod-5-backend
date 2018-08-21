class Api::V1::ImagesController < ApplicationController

  def create
    @image = Image.find_or_create_by(image_params)
    render json: @image
  end

  def index
    @images = Image.all
    render json: @images
  end



  private

  def image_params
    params.require(:image).permit(:name, :ImgId, :src)
  end

end
