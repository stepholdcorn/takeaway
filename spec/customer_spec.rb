require 'customer'

describe Customer do 

	let(:customer) {Customer.new}
	let(:menu) {double :menu}

	it 'should be able to view the menu' do
		expect(menu).to receive(:show_menu)
		customer.view_menu(menu)
	end
end