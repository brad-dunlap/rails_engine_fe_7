class Merchant
	attr_accessor :name, :id
	def initialize(data)
		@id = data[:id]
		@name = data[:attributes][:name]
	end
end