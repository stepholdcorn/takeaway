require 'customer'

describe Customer do 

	let(:customer) {Customer.new}
	let(:restaurant) {double :restaurant}

	it 'should be able to view the menu' do
		expect(restaurant).to receive(:show_menu)
		customer.view_menu(restaurant)
	end

	it 'should be able to place an order' do
		customer.place_order!
		expect(customer.order_placed?).to eq(true)
	end

	it 'should be able to order a bbq pizza' do
		customer.make_selections
		expect(customer.order_review[0]).to eq(name: 'bbq', quantity: 1)
	end

	it 'should be able to enter the quantity' do
		customer.make_selections
		expect(customer.order_review[0]).to eq(name: 'bbq', quantity: 2)
	end
end