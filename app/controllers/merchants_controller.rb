class MerchantsController < ApplicationController
	def index
		merchant_service = MerchantService.new
		@merchants = merchant_service.all_merchants
	end

	def show
		merchant_service = MerchantService.new
		@merchant = merchant_service.merchant(params[:id])
		@items = merchant_service.merchant_items(params[:id])
	end
end