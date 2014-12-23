class Restaurant

	def initialize
		@order_received = false
	end

	def receive_order!
		@order_received = true
		send_text
	end

	def order_received?
		@order_received
	end

end
 
