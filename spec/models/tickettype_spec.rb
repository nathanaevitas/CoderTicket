require 'rails_helper'

RSpec.describe TicketType, type: :model do
  it 'validates on price and max_quantity' do
  	t = build(:ticket_type, price: '', max_quantity: '')
  	t.save
  	expect(t.errors[:price].to_s).to include('not a number')
  	expect(t.errors[:max_quantity].to_s).to include('not a number')
  end
end

