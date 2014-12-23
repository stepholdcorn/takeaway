require 'phone'

class Device; include Phone; end

describe Phone do 

	let(:phone) {Device.new}

	it 'should be able to send a text confirmation' do
		allow(phone).to receive(:text_sent) { true }
		expect(phone.text_sent?).to eq(true)
	end

end