class Restaurant

	def initialize
		@order_received = false
	end

	def receive_order!(customer)
		customer.place_order!
		@order_received = true
	end

	def order_received?
		@order_received
	end

end