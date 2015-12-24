require 'rails_helper'

RSpec.describe "event details", type: :feature do
	it 'shows an event detail when clicking view an event' do
		visit root_path
		event = create(:event, name: 'abc')
		visit event_path(event)
		expect(page).to have_text(event.name)
	end
	it 'brings user to ticket purchase page when clicking on book now' do
		event = create(:event, name: 'abc')
		ticket = create(:ticket_type,name: 'bcd')
		ticket.event = event
		ticket.save	
		visit event_path(event)
		click_button('BOOK NOW')
		expect(page).to have_text(event.name)
		expect(page).to have_text(ticket.name)
	end
end