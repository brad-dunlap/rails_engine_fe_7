class MerchantService
	def all_merchants
		response = conn.get('merchants')
		parsed = JSON.parse(response.body, symbolize_names: true)
		merchants = parsed[:data]
	end

	def conn
		Faraday.new(
			url: 'http://localhost:3000/api/v1/'
		)
	end
end