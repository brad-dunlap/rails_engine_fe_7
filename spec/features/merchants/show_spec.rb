require 'rails_helper'

RSpec.describe 'Merchants Show Page' do
	describe 'As a visitor' do
		describe 'When I visit the merchants show page' do
			before do
				merchant = Merchant.new({
					"id": "1",
					"type": "merchant",
					"attributes": {
							"name": "Schroeder-Jerde"
					}
			})
				visit "/merchants/#{merchant.id}"
			end
			
			it 'I see that merchant and all of their items' do
				expect(page).to have_content("Schroeder-Jerde")
			end
		end
	end
end