require 'rails_helper'

RSpec.describe Region, type: :model do
  it 'validates on the inclusion of name' do
  	r = Region.create(name: "blab blab")
  	expect(r.errors[:name].to_s).to include("is not included")
  end
  it 'does not allow duplicated name' do
  	a = Region.create(name: 'Ha Noi')
  	b = Region.new(name: 'Ha Noi')
  	b.save
  	expect(b.errors[:name].to_s).to include("been taken")
  end
end
