class Iterators
	attr_accessor :amount
	def initialize
		@hash = {}
	end
	
	def getNameAndId
		
		@amount.times do |index|
			print "Insert the Name #{index+1}: "
			name = gets.chomp
			print "Insert the Id #{index+1}: "
			id = gets.chomp
			@hash.store(name, id)
		end 
	end
	def operationHash
		array = []
		@hash.each_with_index do |(key,value), index|
			key = key.upcase
			puts "Position: #{index + 1} Name: #{key}"
			array.push(key)
		end
		array
	end
	def goodBye
		@hash.each do |key,value|
    	puts "Good bye #{key}"
		end
	end
end

print "Insert the amount: "
amount = gets.chomp.to_i

hash = Iterators.new
hash.amount = amount 
hash.getNameAndId
array = hash.operationHash
print "The array in Uper case is: "
p array
hash.goodBye