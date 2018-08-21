class Api::V1::BoardImagesController < ApplicationController

  def create
    @boardimage = BoardImage.first_or_create(id:)
  end

end
