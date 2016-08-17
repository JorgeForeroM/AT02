
def method
	print "insert the filename: "
	file = gets.chomp

	file_example = File.open(file, 'w+')
	file_example.truncate(0)
	
	print "Insert the numbers of lines to add: "
	numbersLines = gets.chomp.to_i

	numbersLines.times do |index|
		print "Insert the line #{index + 1}: "
		line = gets
		file_example.write(line)
	end

	file_example.close
	
	file_example = File.open(file)
	print file_example.read

end

method

