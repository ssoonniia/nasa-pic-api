class PicturesController < ApplicationController

  def create
    @picture = Picture.create(picture_params)
    if @picture.save
      render :json => @event
    else
      render :json => @event.errors
    end
  end

  def show
    date = params[:date]
    url=`https://api.nasa.gov/planetary/apod?date=#{date}&hd=false&api_key={insert key}`
    @response = RestClient::Request.execute(:method => "get", :url =>"https://api.nasa.gov/planetary/apod?date=#{date}&hd=false&api_key="+ENV['API_KEY'])


    render json: @response
  end

private

  def picture_params
    params.require(:picture).permit(:title, :date, :explanation, :image, :copyright)
  end
end
