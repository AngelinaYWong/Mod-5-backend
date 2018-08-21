class Api::V1::BoardImagesController < ApplicationController

  def index
    @board_images = BoardImage.all
    render json: @board_images
  end

  def create
    @board_image = BoardImage.find_or_create_by(board_image_params)
    byebug
  end

  private
  def board_image_params
    params.require(:board_image).permit(:board_id, :image_id)
  end
end
