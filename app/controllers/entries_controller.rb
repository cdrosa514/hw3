class EntriesController < ApplicationController

  def index
    # find all Entry rows
    @entries = Entry.all
    # render entries/index view
  end

  def show
    # find an entry
    @entry = Entry.find_by({ "id" => params["id"] })
    # find Places associated with the entry
    @places = Place.where({ "entry_id" => @entry["id"] })
    # render entries/show view with details about Place
  end

  def new
    @entry = Entry.find_by({ "id" => params["id"] })
  end

def create
  @entry = Entry.new

  @entry["title"] = params["title"]

  @entry.save

  redirect_to "/places#{entry["place_id"]}"
end

end