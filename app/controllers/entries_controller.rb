class EntriesController < ApplicationController

  def index
    # find all Entry rows
    @entries = Entry.all
    # render entries/index view
  end

end