def customer_id(name, customer_id)
	message = customer_id > 100? "Thanks to be our customer" : "Thanks"
	name_in_upercase = name.upcase
	puts "Hi #{name_in_upercase}"
	puts "You are our customer #{customer_id} #{message}"
end

customer_id("Brian",120)
customer_id "Jorge",12