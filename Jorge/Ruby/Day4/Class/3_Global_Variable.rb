$example_of_global = 6

module ModuleTest
	puts "Inside module"
	puts $example_of_global
end

def method_test
	puts "Inside the method"
	puts $example_of_global
end

class SomeTest
	puts "Inside class"
	puts $example_of_global
	$example_of_global = 75
end

method_test
puts "Inside toplevel"
puts $example_of_global
puts global_variables.include?:$example_of_global #