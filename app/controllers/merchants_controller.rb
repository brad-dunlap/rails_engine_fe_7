class MerchantsController < ApplicationController
	def index
		@merchants = facade.all_merchants
	end

	def show
		@merchant = facade.all_merchants.find { |merchant| 
		merchant.id == params[:id] }
		@items = facade.merchant_items(params[:id])
	end

	private

	def facade
		@facade ||= MerchantsFacade.new
	end
end