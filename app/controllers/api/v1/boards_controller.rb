class Api::V1::BoardsController < ApplicationController

  def create
    @board = Board.create(board_params)
  end

  def show
    @board = Board.find(params[:id])
    @images = @board.images
    response = {'images':@images}
    render json: response
  end

  private

  # def board_params
  #   params.require(:board).permit(:id)
  # end

end
