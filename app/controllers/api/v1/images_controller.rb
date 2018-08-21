class Api::V1::ImagesController < ApplicationController

  def create
    @image = Image.find_or_create_by(image_params)
  end



  private

  def image_params
    params.require(:image).permit(:name, :id, :image)
  end

end
