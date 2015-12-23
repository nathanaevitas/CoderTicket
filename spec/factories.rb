require 'faker'

FactoryGirl.define do
  factory :event do |f|
    f.starts_at { Faker::Time.forward(23, :morning) }
    f.extended_html_description { Faker::Lorem.paragraph(2) }
    f.name {Faker::Name.name}
    f.venue {Venue.new}
    f.category {Category.new}
    
  end
end

 