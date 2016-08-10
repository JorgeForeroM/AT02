def figure(type)
	sides = 0
	sides = yield(3)
	puts "The figure obtanined is: #{type} with #{sides} sides"
end


figure("triangle") do |side| 
	perimeter = 3 * side
	puts "The perimeter is: #{perimeter}"
	sides = 3
end

 figure("Cuadrado") {|side|
 	perimeter = 4 * side
 	puts "The perimeter is: #{perimeter}" 
 	sides = 4
 }

 figure("Pentagon") {|side|
 	perimeter = 5 * side
 	puts "The perimeter is: #{perimeter}"
 	sides = 5
 }
