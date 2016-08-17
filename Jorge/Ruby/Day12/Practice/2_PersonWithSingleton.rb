require 'singleton'
class Person
	include Singleton
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



person = Person.instance

print "Insert new user: "
user = gets.chomp
print "Insert new welcome message: "
message = gets.chomp

person.addUsers(user, message)

puts "Last user: #{Person.instance.user}"

=begin
Both are the same but the second is difine with singleton and 
only use one instance, that is good because in case, for example:
We have 10000 guest, is don't use singleton we have 10000 instances
in memory
=end