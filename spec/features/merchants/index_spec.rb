require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
	describe 'As a visitor' do
		describe 'When I visit the merchants index page' do
			before do
				visit "/merchants"
			end

			it 'I see all merchants in the system' do
				expect(page).to have_content("Schroeder-Jerde")
				expect(page).to have_content("Klein, Rempel and Jones")
				expect(page).to have_content("Willms and Sons")
			end
		end
	end
end