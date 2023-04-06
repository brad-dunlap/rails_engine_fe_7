require 'rails_helper'

RSpec.describe 'Merchants Show Page' do
	describe 'As a visitor' do
		describe 'When I visit the merchants show page' do
			# before do
			# 	merchant = Merchant.new({
			# 		"id": "1",
			# 		"type": "merchant",
			# 		"attributes": {
			# 				"name": "Schroeder-Jerde"
			# 		}
			# })
		# end
		
		it 'I see that merchant and all of their items' do
			visit "/merchants/1"
				# expect(page).to have_content("Schroeder-Jerde")
				# expect(page).to have_content("Item Nemo Facere")
				# expect(page).to have_content("Item Ea Voluptatum")
			end
		end
	end
end