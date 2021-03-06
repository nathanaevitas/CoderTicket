class OrderItem < ActiveRecord::Base
	belongs_to :order
	validates_presence_of :price, :quantity, :order_id

	def subtotal
		if self.price.nil? || self.quantity.nil?
			return 1
		else		  		
			self.price*self.quantity
		end 
	end
end
