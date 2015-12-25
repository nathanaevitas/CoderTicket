class OrderItemsController < ApplicationController
	before_action :cleanup_params, only: [:create]
  def new
  end

  def create
  	@order_item = OrderItem.new(price: params[:order_item][:price],
                                quantity: params[:order_item][:max_quantity],
                                order_id:params[:order_item][:event_id])
  	if @order_item.save
  		redirect_to new_event_ticket_path(params[:order_item][:order_id]), :notice => 'item added to order'
  	else
  		raise abc	
  	end
  end

  private
  def order_item_params
  	params.require(:order_item).permit(:price,:max_quanity,:order_id)
  end

  def cleanup_params
    params[:max_quantity] = params[:max_quantity].to_i
    params[:price]  = params[:price].to_i
  end
  
end
