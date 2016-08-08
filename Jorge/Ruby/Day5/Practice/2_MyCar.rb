class MyCar
	attr_reader :year, :model
	attr_accessor :color
	def initialize( year, model)
		@year = year
		@model = model
		@current_speed = 0
	end

	def speedUp(number)
		@current_speed += number
		puts "You acelerate to #{number} mph"
	end

	def brake(value)
		@current_speed -= value
		puts "You brake to #{value} mph"
	end

	def shutOff
		@current_speed = 0
		puts "You shut the car Off"
	end


end

myCar = MyCar.new(2008, "Gallardo")
myCar.color = "Negro"
puts "Year is : #{myCar.year}"
puts "Color is: #{myCar.color}"
puts "Model is : #{myCar.model}"
myCar.speedUp(50)
myCar.brake(10)
myCar.shutOff
