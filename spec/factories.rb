#require 'spec_helper'
require 'faker'


FactoryGirl.define do  

  factory :order do
    
  end
  factory :user do |f|
    f.name {Faker::Name.name}
    f.email {Faker::Internet.email}
    f.password {Faker::Internet.password(8)}  
    
  end
 

  factory :event do |f|
    f.starts_at { Faker::Time.forward(23, :morning) }
    f.extended_html_description { Faker::Lorem.paragraph(2) }
    f.name {Faker::Name.name}
    f.venue {Venue.new}
    f.category {Category.new}    
  end

    factory :ticket_type do |f|
    f.name {Faker::Address.street_name}
    f.max_quantity {Faker::Number.number(2)}
    f.price {Faker::Number.number(4)}
  end
end

 

 
