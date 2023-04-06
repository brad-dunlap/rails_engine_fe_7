class MerchantsFacade
	def initialize
		@service = merchants_service
	end

	def all_merchants
		results = merchants_service.all_merchants[:data]
		results.map do |merchant|
			Merchant.new(merchant)
		end
	end

	def merchant_items(id)
		results = merchants_service.merchant_items(id)
		results[:data]		
	end

	private
	def merchants_service
		@merchants_service ||= MerchantsService.new
	end
end