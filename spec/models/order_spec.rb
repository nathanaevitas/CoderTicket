require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'calculates the subtotal and save to database' do
  	o = Order.create
  	i = OrderItem.new(price: 2, quantity: 10)
  	i.order = o
  	i.save
  	expect(o.subtotal).to eq 20

  end
end
