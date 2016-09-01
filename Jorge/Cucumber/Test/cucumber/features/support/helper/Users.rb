module Users
	def Users.load_users
		##load statis list users and password into a hash
		@users = {
			'jorge' => 123,
			'angelica' => 123,
			'roy' => 123,
			'wally' => 123}
	end

	def Users.load_messages
		@messages = {
			'jorge' => "Welcome",
			'angelica' => "Welcome",
			'roy' => "Welcome",
			'wally' => "Welcome"}
	end
end
