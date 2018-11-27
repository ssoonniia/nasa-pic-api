class PicturesController < ApplicationController


  def show
    date = !params[:date] ? Date.today : params[:date]
    @picture = Picture.find_or_create_by(date: date)

    if !@picture.title
      @response = RestClient::Request.execute(:method => "get",
        :url => "https://api.nasa.gov/planetary/apod?date=#{date}&hd=false&api_key="+ENV['API_KEY'])
      @pictureObj =  JSON.parse(@response)

      @picture.update(@pictureObj)
    end

    render json: @picture
  end

end
