class OrderItem < ActiveRecord::Base
	belongs_to :order

	def subtotal
		self.price * self.quantity
	end
end
