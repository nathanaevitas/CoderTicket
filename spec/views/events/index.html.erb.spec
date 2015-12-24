require 'rails_helper'

RSpec.describe 'events#index', type: :view do
	it 'renders the search result page' do
		assign(:events, [create(:event),create(:event)] )		
		render
		expect(view).to render_template(:partial => "_card", :count => 2)		
	end
end