class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :category
  has_many :ticket_types

  validates_presence_of :extended_html_description, :venue, :category, :starts_at
  validates_uniqueness_of :name, uniqueness: {scope: [:venue, :starts_at]}

  def self.current_events
  	Event.where('starts_at >= ?',Time.new)  	
  end

  def self.search(str)
  	Event.where('name LIKE ?',str+'%').concat(Event.where('extended_html_description LIKE ?',str+'%'))
  end

end
