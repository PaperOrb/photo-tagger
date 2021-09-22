class ImagesController < ApplicationController

  # GET /images or /images.json
  def index
    @images = Image.all

    render json: @images
  end

  # GET /images/1 or /images/1.json
  def show
    @image = Image.find_by(id: params[:id])

    render json: @image
  end

  private

end
