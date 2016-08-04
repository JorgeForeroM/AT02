class Person
	def insertPerson
		print "Give me name: "
		name = gets.chomp
		print "Give me your age: "
		age = gets.chomp.to_i
	end
end

class Age
	def initialize age
		@age = age
	end

	def ageInMitunes
		puts "Your age in minutes is: #{@age * 365 * 24 * 60} "
	end
end

person_age = Person.new.insertPerson
age = Age.new(person_age)
age.ageInMitunes