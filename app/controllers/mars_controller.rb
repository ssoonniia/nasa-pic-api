class MarsController < ApplicationController

    def index
      @mars = RestClient::Request.execute(:method => "get",
        :url => "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?&sol=1000&camera=fhaz&api_key="+ENV['API_KEY'])
        render json: @mars
    end

end

# https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz&api_key=DEMO_KEY
#
# https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=${camera}&api_key=DEMO_KEY
#
# https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?&sol=1000&api_key=
