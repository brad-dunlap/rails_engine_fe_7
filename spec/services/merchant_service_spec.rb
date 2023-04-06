require 'rails_helper'

describe MerchantsService do
	context 'instance methods' do
		describe '#all_merchants' do
			it 'should return all merchant instances' do	
				merchants = described_class.new.all_merchants
				expect(merchants).to be_an(Hash)
				expect(merchants[:data].first.keys).to eq([:id, :type, :attributes])
				expect(merchants[:data].first[:attributes].keys).to eq([:name])
			end
		end

		describe '#merchant_items(id)' do
			it 'should return all merchant items' do
				merchant_items = described_class.new.merchant_items(1)

				expect(merchant_items).to be_an(Hash)
				expect(merchant_items[:data].first.keys).to eq([:id, :type, :attributes])
				expect(merchant_items[:data].first[:attributes].keys).to eq([:name, :description, :unit_price, :merchant_id])

			end
		end
	end
end