require 'customer'

describe Customer do 

	let(:customer) {Customer.new}
	let(:restaurant) {double :restaurant, receive_order!: true, type_verification: true}

	it 'should be able to view the menu' do
		expect(restaurant).to receive(:show_menu)
		customer.view_menu(restaurant)
	end

	it 'should be able to place an order' do
		customer.place_order!
		expect(customer.order_placed?).to eq(true)
	end

	it 'should not allow an item to be ordered if it is not on the menu' do
		allow(restaurant).to receive(:type_verification) { false }
		expect(customer.order_placed?).to eq(false)
	end

	xit 'should be able to order one bbq pizza' do
		customer.make_selections(restaurant)
		expect(customer.order_review).to eq([name: 'bbq', quantity: 1])
	end

	xit 'should be able to enter the quantity' do
		customer.make_selections(restaurant)
		expect(customer.order_review).to eq([name: 'bbq', quantity: 2])
	end

	xit 'should be able to enter the total number of pizzas selected to place order' do
		customer.make_selections(restaurant)
		expect(customer.order_placed?).to eq(true)
	end

	xit 'should not place the order if the total does not match the input' do
		customer.make_selections(restaurant)
		expect(customer.order_placed?).to eq(false)
	end

	xit 'should allow more than one type of pizza to be ordered' do
		customer.make_selections(restaurant)
		expect(customer.order_review.count).to eq(2)
	end

end