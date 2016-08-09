
def passenger_init(name, destination = "CBBA", price)
	price.to_f/7
end

print "Insert the name: "
name = gets.chomp

print "Insert the price: "
price = gets.chomp.to_i

puts "Desea ingresar destino? Y or N "
response=gets.chomp.to_s

if response == "y" || response == "Y" 
	print "Insert the destination: " 
	destination = gets.chomp.to_s 
	priceInDollars = passenger_init name, destination, price
else
	priceInDollars = passenger_init name, price
end

puts "Price in dollars: #{priceInDollars.round(2)}"




