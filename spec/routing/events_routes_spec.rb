require 'rails_helper'

RSpec.describe 'Routing to create new event', type: :routing do
	it 'routes to create new event' do
		expect(get: '/events/new').to route_to('events#new') 
	end
end