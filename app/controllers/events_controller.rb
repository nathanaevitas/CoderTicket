class EventsController < ApplicationController
  def index
    @events = Event.all
    @events = Event.search(params[:search]) if params[:search].present?    
  end

  def show
    @event = Event.find(params[:id])
  end
end