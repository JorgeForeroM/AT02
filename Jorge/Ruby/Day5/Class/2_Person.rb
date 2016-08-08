class Person
	attr_writer :name
	attr_reader :greet
	attr_accessor :message

	def greet
		@greet = "Hi #{@name}"
	end
end

person = Person.new
puts person.name = "Jorge"
person.greet
puts person.greet
puts person.message = "#{person.greet} Have a nice day"
