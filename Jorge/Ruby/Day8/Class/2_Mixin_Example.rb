module Week
	FIRST_DAY = "Sunday"

	def Week.weeks_in_month
		puts "You hace four weeks in a month"
	end

	def Week.week_in_year
		puts "You have 52 weeks in a year"
	end
end

puts Week::FIRST_DAY
Week.weeks_in_month
Week.week_in_year
