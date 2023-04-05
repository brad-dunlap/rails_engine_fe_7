class MerchantService
	def all_merchants
		response = conn.get('merchants')
		parsed = JSON.parse(response.body, symbolize_names: true)
		merchants = parsed[:data]
	end

	def merchant(id)
		response = conn.get("merchants/#{id}")
		parsed = JSON.parse(response.body, symbolize_names: true)
		merchant = parsed[:data]
	end
		
	def merchant_items(id)
		response = conn.get("merchants/#{id}/items")
		parsed = JSON.parse(response.body, symbolize_names: true)
		items = parsed[:data]
	end

	def conn
		Faraday.new(
			url: 'http://localhost:3000/api/v1/'
		)
	end
end