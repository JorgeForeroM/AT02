class MyCar

	def initialize(year, color, model)
		@year = year
		@color = color
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

car = MyCar.new(2007, "Negro", "Gallardo")
car.speedUp(50)
car.brake(10)
car.shutOff



