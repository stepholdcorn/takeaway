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
		type
		number
		@selection << {name: @type, quantity: @number}
		confirm
		if total_check == false
			puts "Incorrect total"
		else
			place_order! 
			puts "Order placed!"
		end
	end

	def type
		puts 'Please enter a pizza'
		@type = gets.chomp
	end

	def number
		puts 'Please enter the quantity'
		@number = gets.chomp.to_i
	end

	def confirm
		puts 'Please confirm the total number of pizzas to place order'
		@total = gets.chomp.to_i
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