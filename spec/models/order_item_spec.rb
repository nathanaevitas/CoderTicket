require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it 'does not allow to create an order item with quantity more than maximum'
end
