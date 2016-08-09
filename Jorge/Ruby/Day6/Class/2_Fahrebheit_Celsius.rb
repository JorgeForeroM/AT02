def celsius_to_Fahrenheit(celsius)
	fahrenheit = (((9 * celsius) / 5) + 32)
	return fahrenheit
end

def fahrenheit_to_Celsius fahrenheit
	(5 * (fahrenheit - 32)) / 9
end

print "Insert the value to converte of celsius to Fahrenheit:  "
celsius = gets.chomp.to_i
puts fara = celsius_to_Fahrenheit(celsius)
puts fahrenheit_to_Celsius fara
