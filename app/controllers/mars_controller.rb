class MarsController < ApplicationController

    def show
      @mars = RestClient::Request.execute(:method => "get",
        "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?&camera=all&api_key="+ENV['API_KEY']
        render json: @mars
    end

end
