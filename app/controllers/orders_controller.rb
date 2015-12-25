class OrdersController < ApplicationController
  
  def create
    # raise 'abc'
    if Order.where(id: params[:order][:id]).empty?
      @order = Order.new(id: params[:order][:id])    
      if @order.save
        redirect_to order_path(@order), flash: {error: "You have completed your order!"}
      else
        redirect_to new_event_ticket_path(params[:order][:id]),
        flash: {error: "Sorry! There's an error with saving your order"}
      end              
    else
      @order = Order.find(params[:order][:id])
      redirect_to order_path(@order)     
    end   	
  end

  def show
  	@order = Order.find(params[:id])
    @event = Event.find(params[:id])
  end
end
