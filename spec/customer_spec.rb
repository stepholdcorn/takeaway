require 'customer'

describe Customer do 

	let(:customer) {Customer.new}
	let(:restaurant) {double :restaurant, receive_order!: true}


	it 'should be able to view the menu' do
		expect(restaurant).to receive(:show_menu)
		customer.view_menu(restaurant)
	end

	it 'should be able to place an order' do
		customer.place_order!
		expect(customer.order_placed?).to eq(true)
	end

	xit 'should not allow an item to be ordered if it is not on the menu' do
		customer.make_selections(restaurant)
		expect(customer.collect_order).to raise_error('Not on the menu')
	end

	it 'should be able to order one bbq pizza' do
		STDIN.should_receive(:gets).and_return("bbq", "1", "", "1")
		customer.make_selections(restaurant)
		expect(customer.order_review).to eq([name: 'bbq', quantity: 1])
	end

	it 'should be able to enter the total number of pizzas selected to place order' do
		STDIN.should_receive(:gets).and_return("bbq", "1", "", "1")
		customer.make_selections(restaurant)
		expect(customer.order_placed?).to eq(true)
	end

	it 'should not place the order if the total does not match the input' do
		STDIN.should_receive(:gets).and_return("bbq", "1", "", "2")
		customer.make_selections(restaurant)
		expect(customer.order_placed?).to eq(false)
	end

	it 'should allow more than one type of pizza to be ordered' do
		STDIN.should_receive(:gets).and_return("bbq", "1", "feast", "1", "", "2")
		customer.make_selections(restaurant)
		expect(customer.order_review.count).to eq(2)
	end

end