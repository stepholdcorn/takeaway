class Customer

	def initialize
		@selection = []
		@order_placed = false
	end

	def view_menu(menu)
		menu.show_menu
	end

	def make_selections
		puts "Please enter a pizza"
		selection = gets.chomp
		@selection << selection
	end

	def order_review
		@selection
	end

	def place_order!
		@order_placed = true
	end

	def order_placed?
		@order_placed
	end

end