=begin
Add some line in the middle of your script that is 
referring to a variable that doesn’t exist. 
Run the file and please explain the error displayed. 

=end

puts "I will now count my fruits"

bananas = 25 + 30 / 6
puts "Bananas: #{bananas}"
apples = 100 - 25 * 3 % 4
puts "Apples: #{apples}"

puts "now I will coun the potato: "

calculations = 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
puts calculations
puts "Is it true that 3 + 2 < 5 - 7?"
calculations = 3 + 2 < 5 - 7
puts calculations
calculations = 3 + 2
puts "What is 3 + 2? It is #{calculations}" 
calculations = 5 - 7
puts "What is 5 - 7? It is #{calculations}"

puts "This variable doesn't exist #{nonExistent}"
=begin
In this part occur the error that the variable 'notexist'
is undefined because Its isn't declared
=end