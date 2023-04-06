class Merchant
	attr_accessor :name, :id, :type
	def initialize(data)
		@id = data[:id]
		@type = data[:type]
		@name = data[:attributes][:name]
	end
end