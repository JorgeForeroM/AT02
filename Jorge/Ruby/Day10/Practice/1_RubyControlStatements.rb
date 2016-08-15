class Person
	attr_accessor :name, :age

	def calculateYearsInHours
		
		puts @message = @age > 35 ? "That age cannot be calculate" : "The age in ours is: #{@age * 365 * 24}"
		method
	end

	def method
		case @age
			when 0..5 then puts "#{name} you are a baby"
			when 6..12 then puts "#{name} you are a child"
			when 13..21 then puts "#{name} you are a young people"
			when 22..35 then puts "#{name} you are adult"
			else puts @message
		end
	end

end

print "Insert your name: "
name = gets.chomp.to_s
print "Insert your age: "
age = gets.chomp.to_i

control = Person.new
control.name = name
control.age = age
control.calculateYearsInHours


