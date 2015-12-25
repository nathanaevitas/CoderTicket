class Order < ActiveRecord::Base
  has_many :order_items 

	def total_cost
		sum = 0		
		self.order_items.each {|item| sum += item.subtotal}
		return sum
	end
end 
