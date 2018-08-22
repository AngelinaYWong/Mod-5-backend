class Api::V1::PostsController < ApplicationController

  def index
    @posts = BoardImage.all
    render json: @posts
  end

  def create
    @post = Post.find_or_create_by(post_params)
    # byebug
  end

  private
  def post_params
    params.require(:post).permit(:board_id, :image_id)
  end
end
