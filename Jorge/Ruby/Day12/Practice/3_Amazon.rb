require 'singleton'
class Store
	include Singleton
	attr_reader :itemAmount,:itemQuantity, :itemPrice
	def initialize 
		@itemAmount = {}
		@itemPrice = {"Samsung S6" => 480,
			"Samsung S7" => 750,
			"Iphone 7" => 950,
			"Iphone 7s" => 1100
		}
		@itemQuantity={"Samsung S6 Edge" => 15,
			"Samsung S7" => 10,
			"Iphone 7" => 6,
			"Iphone 7s" => 9
		}
		@discount = 0
	end
	def buyItem 
		print "What item do you want?: "
		item = gets.chomp
		print "Insert the amount?: "
		amount = gets.chomp.to_i
		
		@itemQuantity.each{|key,value|
			if key == item then @itemQuantity.store(key,value -= amount) end
		}
		if @itemAmount.has_key?(item) then
			@itemAmount.each{|key,value|
			if key == item then @itemAmount.store(key, value += amount) end
		}
		else
			@itemAmount.store(item,amount)
		end
	end
	def calculatePrice item,amount
		result = 0
		@itemPrice.each{|key,value|
			if item == key then result = value * amount end
		}
		result
	end
end

store = Store.instance
p store.itemPrice
print "How many items do you like to buy?: "
quantity = gets.chomp.to_i
quantity.times do |index|
	store.buyItem
end
puts "Item  |  Quantity | Precio"
store.itemAmount.each {|key,value|
	print "#{key} | #{value}   |" 
	puts store.calculatePrice key,value
}

puts " The actual inventary"
p store.itemQuantity
