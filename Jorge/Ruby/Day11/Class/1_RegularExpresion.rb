def userName
	response = nil
	while response == nil do
		print "Please insert the user name: "
		username = gets.chomp
		response = username =~/(?=.*[a-z])(?=.*[0-9])(?=.*[_])/
	end
end

def password
	response = nil
	while response == nil do 
		print "Please insert the password: "
		password = gets.chomp
		response = password =~/(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{8,16}/
	end
end

def gmail
	response = nil
	while response == nil do
		print "Please insert the email"
		email = gets.chomp
		response = email =~/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]*(\.[a-z]{2,3})$/
	end
end

userName
password
gmail

gets

	
			
		
