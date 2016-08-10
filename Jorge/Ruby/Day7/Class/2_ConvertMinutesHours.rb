def convert(seconds)
	minutes = seconds.to_f/60
	hours= minutes/60
	return minutes, hours
end

print "Insert the seconds: "
seconds = gets.chomp.to_i

minutes, hours = convert(seconds)

puts "In Minutes:#{minutes.round(2)}"
puts "In Hours:#{hours.round(2)}"