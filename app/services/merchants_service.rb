class MerchantsService
	def all_merchants
		response = conn.get('merchants')
		parsed = JSON.parse(response.body, symbolize_names: true)
	end
		
	def merchant_items(id)
		response = conn.get("merchants/#{id}/items")
		parsed = JSON.parse(response.body, symbolize_names: true)
	end

	def conn
		Faraday.new(
			url: 'http://localhost:3000/api/v1/'
		)
	end
end