class Venue < ActiveRecord::Base
  belongs_to :region
  validates_uniqueness_of :name

  def self.venue_list
      Venue.all
  end  
end
