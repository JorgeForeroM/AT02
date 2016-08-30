class Client
	def clients_id
		clients = {
			'jorge' => 23,
			'angelica' => 67,
			'roy' => 12,
			'wally' => 43}
	end

	def priced
		priced = {
			23 => 564,
			67 => 766,
			12 => 565,
			43 => 784
		}
	end

	
end
def client
	@client ||= Client.new
end

