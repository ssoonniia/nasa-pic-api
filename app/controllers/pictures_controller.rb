class PicturesController < ApplicationController
  before_action :set_picture, only: [:show]
  before_action :set_date, only: [:show]

  def index
    @pictures = Picture.all
    render json: @pictures
  end

  def show
    if !@picture.title
      get_picture_from_nasa
    end
    render json: @picture, include: ['comments']
  end

 private

  def set_date
    @date = !params[:date] ? Date.today : params[:date]
  end

  def set_picture
    @picture = Picture.find_or_create_by(date: set_date)
  end

  def get_picture_from_nasa
    response = RestClient::Request.execute(:method => "get",
      :url => "https://api.nasa.gov/planetary/apod?date=#{@date}&hd=false&api_key="+ENV['API_KEY'])
    pictureObj =  JSON.parse(response)
    @picture.update(pictureObj)
  end

end
