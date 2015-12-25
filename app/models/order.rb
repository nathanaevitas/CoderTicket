class Order < ActiveRecord::Base
  has_many :order_items 

  def subtotal(subtotal)
   	self[:subtotal] += subtotal
   end 

end
