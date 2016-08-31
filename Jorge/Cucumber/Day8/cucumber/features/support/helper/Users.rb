module Users
	def Users.load_users
		##load statis list users and password into a hash
		@users = {
			'jorge' => 123,
			'angelica' => 123,
			'roy' => 123,
			'wally' => 123}
	end

	def Users.get_list_of_users(hash)
		@list_user = @users.keys
	end

	def Users.extract_user_from_array(user,array)
	end

	def Users.exist_on_array?(user,array)
	end
end
