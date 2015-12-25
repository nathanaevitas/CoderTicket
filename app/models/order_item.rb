class OrderItem < ActiveRecord::Base
	belongs_to :order

	def subtotal
		if self.price.nil? || self.quantity.nil?
			return 1
		else		  		
			self.price*self.quantity
		end 
	end
end
