class Customer

	def initialize
		@selection = []
		@order_placed = false
	end

	def view_menu(restaurant)
		restaurant.show_menu
	end

	def make_selections
		puts "Please enter a pizza"
		type = gets.chomp
		puts "Please enter the quantity"
		number = gets.chomp.to_i
		@selection << {name: type, quantity: number}
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