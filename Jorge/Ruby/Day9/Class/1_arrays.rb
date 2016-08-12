class Arrays
	def getArray
		array = [1, 2, 3, 4, 5]	
	end
	
	def firstElement(newArray)
		puts "The first element of array is : #{newArray.first}"
	end

	def lastElement(newArray)
		puts "The last element of array is : #{newArray[-1]}"
	end
	def commonElements(array, array2)
		puts "The array 1 is: #{array.inspect}"
		puts "The array 2 is: #{array2.inspect}"
		puts "The common elements between both arrays are :#{array & array2}"
	end
end


array = Arrays.new
arrayA = array.getArray
array.firstElement(arrayA)
array.lastElement(arrayA)

arrayB = [4, 5, 6, 7, 8, 9]
array.commonElements(arrayA, arrayB)