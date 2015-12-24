#spec/models/event_spec.rb

require 'rails_helper'
require 'faker'

RSpec.describe Event, type: :model do
  it 'has validation against venue,:extended_html_description, :venue, :category, :starts_at' do
    event = Event.create(venue: nil, extended_html_description: nil, category: nil, starts_at: nil)    
    expect(event.errors[:venue]).to include("can't be blank")
    expect(event.errors[:extended_html_description]).to include("can't be blank")
    expect(event.errors[:category]).to include("can't be blank")
    expect(event.errors[:starts_at]).to include("can't be blank")    
  end

  it 'does not allow duplicated event name' do
    v = Venue.new
    t = Time.new
    n = 'bcdefghjjljkl'
    a = create(:event, name: n, venue: v, starts_at: t)
    b = build(:event, name: n, venue: v, starts_at: t)
    b.save
    expect(b.errors[:name].to_s).to include("been taken")
  end 

  it 'lists only current events' do    
    a = create(:event, starts_at: Faker::Time.backward(14, :evening) )
    b = create(:event, starts_at: Faker::Time.backward(14, :evening) )
    c = create(:event)
    d = create(:event)
    expect(Event.current_events).to match_array [c,d]
  end

  it 'returns a list of search results for a text query based on event name and description' do
    a = create(:event, name: 'abc')
    b = create(:event, extended_html_description: 'abc')
    c = create(:event)

    expect(Event.search('a')).to match_array [a,b]
  end
end
  

