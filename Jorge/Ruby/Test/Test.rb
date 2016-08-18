module Convertions
	def milimetersToCentimeters(milimeters)
		milimeters / 10
	end

	def centimeterToMeter(centimeters)
		centimeters / 100
	end

	def metersToKilometers(meters)
		meters / 1000
	end
end

require 'singleton'
class Registration
	attr_accessor :hash

	include Singleton
	include Convertions

	def initialize
		@username = nil
		@id = nil
		@hash = {}
		@file = File.open("execution.log",'w+')
		@file.truncate(0)	
	end

	def insertUserAndID
		print "Insert the Id: "
		@id = gets.chomp.to_i


		begin
		print "Insert the username: "
			@username = gets.chomp.to_s
			response = @username =~/^[a-z0-9]{1,11}$/	
		end while response == nil
		
		@hash.store(@id, @username)
		@file.write("The username inserted was #{@username} with ID: #{@id}\n")

	end

	def amountOfUSers
		print "Insert the amount of users: "
		amount = gets.chomp.to_i

		while(amount < 3 && amount > 15) do
			print "Insert the amount of users: "
			amount = gets.chomp.to_i
		end
		@file.write("The amount of users to insert is: #{amount}\n")
		amount.times do
			insertUserAndID
		end

	end

	def convert
		puts a = "a) From Milimeters to centimeters"
		puts b = "b) From centimeters to meters"
		puts c = "c) From meters to Kilometers"
		print "Select the letter to choice: "
		opctionSelected = gets.chomp
		@file.write(" #{a}\n #{b}\n #{c}\n Option Select is: #{opctionSelected}\n")
		opctionSelected
	end

	def giveThecalculation(option)
		case option
			when "a" then convertMilimetersToCentimeter
			when "b" then convertCentimetersToMeters
			when "c" then convertMetersToKilometers
		end	
	end


	def convertMilimetersToCentimeter
		print "Insert the value in milimeters: "
		milimeters = gets.chomp.to_i
		puts m = "#{milimeters} milimeters represent #{milimetersToCentimeters(milimeters)} centimeters"
		@file.write("#{m}\n\n")
	end

	def convertCentimetersToMeters
		print "Insert the value in meters: "
		centimeters = gets.chomp.to_i
		puts m = "#{centimeters} cms represent #{centimeterToMeter(centimeters)} meters"
		@file.write("#{m}\n\n")
	end

	def convertMetersToKilometers
		print "Insert the value in meters: "
		meters = gets.chomp.to_i
		puts m = "#{meters} meters represent #{metersToKilometers(meters)} Kilometers"
		@file.write("#{m}\n\n")
	end

	def askToTheUser
		array = []
		@hash.each do |key, value|
			print m = "#{value} do you want a perform a calculation YES/NO: "
			result = gets.chomp
			@file.write("#{m}\n")
			@file.write("#{result}\n")
			if(result == "YES" || result == "yes" || result == "Yes")
				giveThecalculation(convert)
			else
				puts m = "Good Bye"
				@file.write("Good Bye\n")
				array.push(value)
			end
		end
		array
	end

	def listOfUser(array)
		puts m ="\nList of user doesn't perform any calculation"
		@file.write("#{m}\n")
		p array
		@file.write(array)
		
	end
	def close
		@file.close
	end
end


reg = Registration.instance
reg.amountOfUSers
reg.listOfUser(reg.askToTheUser)


