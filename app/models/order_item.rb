class OrderItem < TicketType
  belongs_to :order
  belongs_to :ticket_type  

end