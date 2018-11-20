class PicturesController < ApplicationController

  def create
    @picture = Picture.create(picture_params)
    if @picture.save
      render :json => @event
    else
      render :json => @event.errors
    end
  end

private

  def picture_params
    params.require(:picture).permit(:title, :date, :explanation, :image, :copyright)
  end
end
