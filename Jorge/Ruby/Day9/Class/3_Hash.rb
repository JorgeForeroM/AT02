elements = Hash.new  # or {}
elements['H'] = 'Hydrogen' #associate the key 'H' to the value 'Hydrogen'
elements['He'] = 'Helium'
elements['Li'] = 'Lithium'
p elements['H']       # prints "Hydrogen"
p elements.length     # prints 3
p elements.values     # prints ["Lithium", "Helium", "Hydrogen"]
p elements.keys       # prints ["Li", "He", "H"]
p elements            # prints {"Li"=>"Lithium", "He"=>"Helium", "H"=>"Hydrogen"}

toppings = Hash["pancakes","syrup","Pizza","Pepper","Cereal","Sugar"]
p toppings

salaries = {"bob" =>10.9,
			"larry"=>7.5,
			"jimmy"=>6.0,
			"jerry"=>6.5}
salaries.inspect
mySalaryArray = salaries.select{|name,salary| salary > 7.0}
p mySalaryArray #prints  [["larry", 7.5], ["bob", 10.9]]
