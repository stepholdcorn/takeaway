class Customer

	def initialize
		@selection = []
		@total = 0
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
		puts "Please confirm the total number of pizzas ordered"
		@total = gets.chomp.to_i
		puts "Please place your order" if total_check == true
	end

	def total_check
		if @total == @selection.inject(0) { |memo, n| memo + n[:quantity] }
			true
		else
			false
		end
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