class Array
	def insertArray
		print "Insert the number of elements: "
		number = gets.chomp.to_i
        array = []

		number.times do |index|
			print "Give me the element #{index + 1}: "
			value = gets.chomp.to_i
			array.push(value)
		end
		return array
	end

	def printArray(array)
		puts "The array is: #{array.inspect}"
	end	
end

array = Array.new
array.printArray(array.insertArray)


