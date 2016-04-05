class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @event = Event.find(id) # look up movie by unique ID
  end
  
end