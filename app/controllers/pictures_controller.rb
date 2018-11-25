class PicturesController < ApplicationController

  def create
    # @picture = Picture.create(picture_params)
    # if @picture.save
    #   render :json => @event
    # else
    #   render :json => @event.errors
    # end


  end

  def show
    date = params[:id]
    url=`https://api.nasa.gov/planetary/apod?date=&hd=false&api_key=s773cGTT3VGPiJQZ9Hx0I1l4Nv07JiihqIYQohKf`

    @response = RestClient::Request.execute(:method => "get",
      :url => "https://api.nasa.gov/planetary/apod?date=#{date}&hd=false&api_key="+ENV['API_KEY'])

    @pictureObj =  JSON.parse(@response)
    @picture = Picture.create(title: @pictureObj)
      render json: @response
  end

private

  def picture_params
    params.require(:picture).permit(:title, :date, :explanation, :image, :copyright)
  end
end
