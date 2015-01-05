require 'menu'

class List; include Menu; end

describe Menu do 

	let(:menu) {List.new}

	it 'should contain a list of products' do
		expect(menu.show_menu).to include(pepperoni: 10)
	end
	
end