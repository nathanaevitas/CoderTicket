class OrderItemsController < ApplicationController
	before_action :cleanup_params, only: [:create]
  def new
  end

  def create
  	@order_item = OrderItem.new(name:params[:order_item][:name],
                                  price: params[:order_item][:price],
                                quantity: params[:order_item][:quantity],
                                order_id:params[:order_item][:order_id])
  	if @order_item.save       
  		  redirect_to new_event_ticket_path(params[:order_item][:order_id]),
        flash: {success:"Thanks! You have successfully added <strong>#{@order_item.quantity}</strong> of <strong>#{@order_item.name}</strong> to your Order"}
    else 
        # raise 'abc'              
        redirect_to new_event_ticket_path(params[:order_item][:order_id]),
        flash: {error: "You must select a quantity value"}
  	end
  end

  private
  def order_item_params
  	params.require(:order_item).permit(:price,:quanity,:name,:order_id)
  end

  def cleanup_params
    params[:quantity] = params[:quantity].to_i
    params[:price]  = params[:price].to_i
  end

end
