class Practice
	attr_reader :hash

	def initialize
		@hash = {}
	end

	def createHash
		print "Insert the amount: "
		quantity = gets.chomp.to_i
		
		quantity.times do |value|

			print "Insert the ID: #{value + 1}: "
			id = gets.chomp.to_i
			while id<1 || id>100 do
				print "Insert the ID #{value + 1}: "
				id = gets.chomp.to_i
			end
			
			response = nil
			while response == nil do
				print "Insert the Username #{value + 1}: "
				username = gets.chomp
				response = username =~/^[a-z]{1,8}$/
			end
			@hash.store(id, username)
		end
	end

	def arrayOfNumber(number)
		array = []
		array = @hash.select {|key, value|key.to_s=~/#{number}/}
		
	end

	def arrayOfCharacter(character)
		array = []
		array = @hash.select {|key, value|value.to_s=~/#{character}/}
		
	end

	def message key, value

			case key
				when (1..25) then puts "#{value} belong Group 1"
				when (26..50) then puts "#{value} belong Group 2"
				when (51..75) then puts "#{value} belong Group 3"
				when (76..100) then puts "#{value} belong Group 4"			
			end

	end

	def printArray array
		p array
	end
end

practice = Practice.new
practice.createHash

print "Insert a number to find de Ids:"
number = gets.chomp.to_i
print "The array of ids is:"
practice.printArray(practice.arrayOfNumber(number))

print "Insert a character to find de usernames:"
username = gets.chomp
print "The array of usernames is:"
practice.printArray(practice.arrayOfCharacter(username))

practice.hash.each{|key,value|
	practice.message key, value
}

