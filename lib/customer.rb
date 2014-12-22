class Customer

	def initialize
		@order_placed = false
	end

	def view_menu(menu)
		menu.show_menu
	end

	def place_order!
		@order_placed = true
	end

	def order_placed?
		@order_placed
	end

end