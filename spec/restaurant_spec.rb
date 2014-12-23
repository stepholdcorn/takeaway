require 'restaurant'

describe Restaurant do 

	let(:restaurant) {Restaurant.new}

	xit 'should be able to receive an order' do
		restaurant.receive_order!
		expect(restaurant.order_received?).to eq(true)
	end

	xit 'should be able to send a text confirmation' do
		restaurant.send_text
		expect(restaurant.text_sent?).to eq(true)
	end
	
end