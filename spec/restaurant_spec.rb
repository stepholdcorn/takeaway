require 'restaurant'

describe Restaurant do 

	let(:restaurant) {Restaurant.new}
	let(:customer) {double :customer}

	it 'should be able to receive an order' do
		allow(customer).to receive(:place_order!)
		restaurant.receive_order!(customer)
		expect(restaurant.order_received?).to eq(true)
	end
	
end