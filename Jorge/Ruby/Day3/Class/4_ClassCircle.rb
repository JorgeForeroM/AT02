class Circle
	def area(radius)
		area = radius * 2 * Math::PI
		puts "Area: #{area.round(2)}"
	end

	def perimeter(radius)
		perimeter = radius * radius * Math::PI
		puts "Perimeter #{perimeter.round(2)}"

	end

end

print "Give me the radius: "
radius = gets.chomp.to_i

circle = Circle.new
circle.area(radius)
circle.perimeter(radius)