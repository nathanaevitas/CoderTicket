class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :category
  has_many :ticket_types

  validates_presence_of :extended_html_description, :venue, :category, :starts_at
  validates_uniqueness_of :name, uniqueness: {scope: [:venue, :starts_at]}

  # def self.current_events
  # 	Event.where('starts_at >= ?',Time.new)  	
  # end
  scope :current_events, -> {where('starts_at > ?',Time.new)}
  # def self.search(str)
  # 	param = str+'%'
  # 	Event.where('name LIKE ? or extended_html_description LIKE ?',param,param)
  # end

  scope :search, -> (str) {where('name LIKE ? or extended_html_description LIKE ?',str+'%',str+"%")}

  def self.event_list
      Event.all
  end 

  def has_tickets?
    !self.ticket_types.empty?       
  end

end
