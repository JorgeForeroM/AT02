class Father
	@@money=500	
	def self.money
		@@money
	end
end

class SonOne < Father

	def self.mount
		mountOne = 100
		@@money -= mountOne
		return mountOne
	end
end

class SonTwo < Father
	def self.mount
		mountTwo = 200
		@@money -= mountTwo
		return mountTwo
	end
end

class SonThree < Father
	def self.mount
		mountThree = 50
		@@money -= mountThree
		return mountThree
	end
end

puts "  Father money initial #{Father.money}"
puts "  Child one is taking: #{SonOne.mount}"
puts "  Child Two is taking: #{SonTwo.mount}"
puts "  Child Three is taking: #{SonThree.mount}"
puts "  Father money final: #{Father.money} "
