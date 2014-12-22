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
		instructions
		type = gets.chomp
		until type.empty? do
			collect_quantity(type)
			instructions
			type = gets.chomp
		end
		puts 'Please confirm the total number of pizzas to place order'
		total = gets.chomp.to_i
		total_confirm(total)
	end

	def instructions
		puts 'Please enter a pizza, to finish press return'
	end

	def collect_quantity(type)
		puts 'Please enter the quantity'
		number = gets.chomp.to_i
		@selection << {name: type, quantity: number}
	end

	def total_confirm(total)
		if checker(total) == false
			puts "Incorrect total, your order was not placed"
		else
			place_order! 
			puts "Order placed!"
		end
	end

	def checker(total)
		if total == @selection.inject(0) { |memo, n| memo + n[:quantity] }
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