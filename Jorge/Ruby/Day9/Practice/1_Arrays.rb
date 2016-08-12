class ArrayClass
	def genereThreeArray
		arrayNumbers = []
		arrayAlphabetical = []
		arrayMixed = []

		print "Insert the number of elements: "
		number = gets.chomp.to_i

		number.times do |index|
			print "Give me the element #{index + 1}: "
			value = gets.chomp.to_s

			if(value.to_i != 0)
				arrayNumbers.push(value.to_i)
				arrayMixed.push(value.to_i)
			else
				arrayAlphabetical.push(value.to_s)
				arrayMixed.push(value.to_s)
			end

		end
	 	return arrayNumbers, arrayAlphabetical, arrayMixed
	end

	def printFirstLastAndCommonElements(array1, array2)
		puts "Elements in common: #{array1 & array2}"
		puts "First element first array: #{array1.first}"
		puts "First element second array: #{array2[0]}"
		puts "Last element first array: #{array1.last}"
		puts "Last element second array: #{array2[-1]}"
		
	end

	def printJoinArraysAndReturnFirstAndLast(array1, array2)
		array = []
		array.push(array1.shift)
		array.push(array2.pop)
		p "Join Arrays: #{array1 + array2}"
		array
	end

	def printArray array
		p "array with both elements extracted: #{array}"
	end
end

array = ArrayClass.new
arrayNumbers, arrayAlphabetical, arrayMixed = array.genereThreeArray
p "Numbers array: #{arrayNumbers}"
p "String array: #{arrayAlphabetical}"
p "Mixed array: #{arrayMixed}"

#array.printFirstLastAndCommonElements(arrayNumbers,arrayMixed)
array.printArray(array.printJoinArraysAndReturnFirstAndLast(arrayNumbers, arrayAlphabetical))