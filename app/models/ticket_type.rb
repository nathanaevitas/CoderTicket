class TicketType < ActiveRecord::Base
  belongs_to :event

  validates_numericality_of :price, :max_quantity

  def self.ticket_type_list
      TicketType.all
  end  
end
