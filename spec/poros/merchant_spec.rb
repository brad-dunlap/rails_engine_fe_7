require "rails_helper"

RSpec.describe Merchant do
	before(:each) do
		@bob = {
			"id": "1",
			"type": "merchant",
			"attributes": {
				"name": "Richard Sniffer"
			}
		}
		@merchant = Merchant.new(@bob)
	end

	it 'exists with attributes' do
		expect(@merchant).to be_instance_of Merchant
		expect(@merchant.id).to eq("1")
		expect(@merchant.type).to eq("merchant")
		expect(@merchant.name).to eq("Richard Sniffer")
	end
end