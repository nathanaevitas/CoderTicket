class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @events = Event.all    
    if params[:noticket] == 'yes' && authenticate_user!     
      @events = @events.select {|event| event.has_tickets? == false}
    else
      @events = @events.select {|event| event.has_tickets? == true}      
      @events = Event.search(params[:search]) if params[:search].present?
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @tickettypes = @event.ticket_types.build    
  end

  def create     
    category = Category.find(params[:event][:category])
    venue = Venue.find(params[:event][:venue])
    @event = Event.new(event_params)
    @event.category = category
    @event.venue = venue    
    
    if @event.save
      redirect_to events_path, flash: {success: "Successfully created a new Event"}
    else
      render 'new'   
    end    
       
  end

  private
  def event_params
    params.require(:event).permit(:name,:extended_html_description,:hero_image_url,:starts_at,:ends_at,:ticket_types)
  end 

end

