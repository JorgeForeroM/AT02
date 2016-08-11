module Greets
	def hi_friend
		puts "Hi friend"
	end
	def goodNight
		puts "Good Night"
	end
	def goodAfternoon
		puts "Good Afternoon"
	end
end

module WaysToSayBye
	def goodBye
		puts "Good Bye"
	end
	def seeYouLater
		puts "See You Later"
	end
	def takeCare
		puts "Take Care"
	end
end

class WaysToSayHelloAndBye
	include Greets
	include WaysToSayBye
end

examples =  WaysToSayHelloAndBye.new
examples.hi_friend
examples.goodNight
examples.goodAfternoon
examples.goodBye
examples.seeYouLater
examples.takeCare
