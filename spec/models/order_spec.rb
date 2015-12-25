require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'calculates the correct total cost of an order' do
  	order = Order.create
  	order_item = OrderItem.new(price: 2, quantity: 10)
  	order_item.order = order
  	order_item.save
  	expect(order.total_cost).to eq 20

  end
end
