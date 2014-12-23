require 'restaurant'

describe Restaurant do 

	let(:restaurant) {Restaurant.new}

	it 'should be able to receive an order' do
		allow(restaurant).to receive(:send_text)
		restaurant.receive_order!
		expect(restaurant.order_received?).to eq(true)
	end
	
end