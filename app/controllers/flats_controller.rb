require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(open(url).read)
    id = params["id"].to_i
    @flat = flats.find do |flat|
      # condition to find the flat
      id == flat["id"]
    end
  end

end
