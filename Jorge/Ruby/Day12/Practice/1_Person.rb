class Person
	attr_accessor :user
	def initialize 
		@user = "Guest"
		@message = "Welcome to the city"
	    @visitors = 0
	    @hash = {}
	    @hash.store(@user,@message)
	end
	def addUsers(user, welcome)
		@user = user
		@message = welcome
		@visitors += 1
		@hash.store(@user, @message)
	end
end



person = Person.new

print "Insert new user:"
user = gets.chomp
print "Insert new welcome message:"
message = gets.chomp
person.addUsers(user, message)

puts "Last user:#{person.user}"

