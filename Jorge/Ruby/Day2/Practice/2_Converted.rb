=begin
4. Create a script with some variables that convert seconds in minutes, 
seconds in hours and second in days. 
Do not just type in the measurements. 
Please work out the arithmetic in Ruby.
Create variable to assign the values
Use the variable name to print the result
=end
seconds =396455
minutes = seconds.to_f/60
hours= minutes/60
days = hours/24

puts "Seconds:#{seconds}"
puts "In Minutes:#{minutes.round(2)}"
puts "In Hours:#{hours.round(2)}"
puts "In days:#{days.round(2)}"