class TicketsController < ApplicationController
	before_action :authenticate_user!, only: [:new]	

  def new
  	@tickets = TicketType.new
    @event = Event.find(params[:event_id]) if params[:event_id].present?
  end

  def create
  	event = Event.find(params[:ticket_type][:event])
  	@ticket = TicketType.new(ticket_params)
  	@ticket.event = event
  	if @ticket.save
  		redirect_to root_path, flash: {success: "Successfully created a new ticket type"}    	
  	end
  end

  private
  def ticket_params
    params.require(:ticket_type).permit(:name,:price,:max_quantity)
  end
  
end
