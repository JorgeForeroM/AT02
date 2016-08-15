class HashPractice
	attr_reader :hash
	def initialize
		@hash = {}
	end
	def defineHash
		print "Insert the number of values:"
		quantity = gets.chomp.to_i
		quantity.times do |index|
			print "Insert the key: "
			key = gets.chomp
			print "Insert the value: "
			value = gets.chomp
			@hash.store(key,value)
		end 
	end

	def printKey(hash)
		puts "Keys: "
		hash.each do |key,value|
    		p key
		end
	end
	def printValues(hash)
		puts "Values:"
		hash.each do |key,value|
    		p value
		end
	end

	def printHash hash
		p hash
	end

	def defineIsExistKey(hash)
		print "Insert the key to searh: "
		key = gets.chomp
		  
		result = hash.has_key?(key) ? "The key exist" : "The key don't exist"
		puts result
	end

	def defineIsExistValue(hash)
		print "Insert the key to searh: "
		value = gets.chomp
		  
		result = hash.has_value?(value)? "The value exist" : "The key don't exist"
		puts result
	end
end

hash = HashPractice.new
hash.defineHash
hash.printKey(hash.hash)
hash.printValues(hash.hash)
hash.printHash(hash.hash)
hash.defineIsExistKey(hash.hash)
hash.defineIsExistValue(hash.hash)