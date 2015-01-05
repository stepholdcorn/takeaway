class Customer

	def initialize(input = STDIN)
		@input = input
		@selection = []
		@order_placed = false
	end

	def view_menu(restaurant)
		restaurant.show_menu
	end

	def make_selections(restaurant)
		instructions
		collect_order(restaurant)
		confirmation
		restaurant.receive_order!
	end

	def instructions
		puts 'Please enter a pizza, to finish press return'
	end

	def collect_order(restaurant)
		type = @input.gets.chomp
		until type.empty? do
			raise 'Not on the menu' unless restaurant.menu.include? type 
			collect_quantity(type)
			type = @input.gets.chomp
		end
	end

	def collect_quantity(type)
		puts 'Please enter the quantity'
		number = @input.gets.chomp.to_i
		@selection << {name: type, quantity: number}
		instructions
	end

	def confirmation
		p order_review
		puts 'Please confirm the total number of pizzas to place order'
		total = @input.gets.chomp.to_i
		total_confirm(total)
	end

	def total_confirm(total)
		checker(total) == false ? (puts "Incorrect total, your order was not placed") : place_order! 
	end

	def checker(total)
		total == @selection.inject(0) { |memo, n| memo + n[:quantity] } ? true : false
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