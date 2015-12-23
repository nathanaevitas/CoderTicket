require 'rails_helper'

RSpec.describe EventsController, type: :controller do
	it 'reponds successfully with http code 200' do
		get :index, {search: 'a'}
		expect(response).to be_success
		expect(response).to have_http_status(200)
	end
	it 'load the seach results into @events variables' do
		a = create(:event, name: 'abc')
		b = create(:event, extended_html_description: 'abc')
		c = create(:event)
		get :index, {search: 'a'}
		expect(assigns(:events)).to match_array([a,b])
	end
end
