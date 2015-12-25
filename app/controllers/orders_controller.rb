class OrdersController < ApplicationController
  def new
  	@order = Order.new
  end

  def create  	  	
  	@order = Order.create(id: params[:order][:id])
  	render 'index'

  end

  def index
  	@order_items = OrderItem.find(params[:order][:id])
  	@order = Order.find(params[:order][:id])
  	
  end
end
