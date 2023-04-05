require 'rails_helper'

describe MerchantService do
	context 'instance methods' do
		describe '#all_merchants' do
			it 'should return all merchant instances' do			
				expect(described_class.new.all_merchants).to be_an(Array)
			end
		end
	end
end