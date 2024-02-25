class PlacesController < ApplicationController

  def index
    # find all places rows
    @places = Place.all
    # render :template => "places/index"
  end

  def show
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # find entries for the Place
    @entries = Entry.where({ "place_id" => @place["id"] })
    # render entries/show view with details about Place
  end

  def new
    @place = Place.find_by({ "id" => params["id"] })
  end

def create
  @place = Place.new

  @place["name"] = params["name"]

  @place.save

  redirect_to "/places"
end


end