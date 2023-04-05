class MerchantsController < ApplicationController
	def index
		merchant_service = MerchantService.new
		@merchants = merchant_service.all_merchants
	end
end