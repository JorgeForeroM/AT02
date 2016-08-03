=begin
3. Create a new script adding at least one case for each one of the arithmetic, comparison, assignment and logical operators, print them and also print the result obtained.
add variables with numbers and strings. 
Print them as a sentences (like in the previous case)
Add some sentence that perform some calculation using variable names. 
	E.g. instead of :
		 arg3 = arg1 + arg2 
           puts #{arg3} 
     use directly
	       puts #{arg1 + arg2}

=end
a = 1
b = 5 # I can't use String

puts "Considering a = 1 and b = 5"
puts "ARITHMETIC OPERATORS"
puts "Adition a+b: #{a + b}"
puts "Substraction a-b: #{a - b}"
puts "Multiplication a*b: #{a * b}"
puts "Division a/b: #{a / b}"
puts "Modulus a%b: #{a % b}"
puts "Exponent a**b: #{a ** b}"

puts "COMPARISON OPERATORS"
puts "a==b?: #{a == b}"
puts "a!=b?: #{a != b}"
puts "a>b?: #{a > b}"
puts "a<b?: #{a < b}"
puts "a>=b?: #{a >= b}"
puts "a<=b?: #{a <= b}"
puts "a<=>b?: #{a <=>b }"
puts "a===b?: #{a === b}"
puts "a.eql?(5.0): #{a.eql?(5.0)}"
puts "a.equal?(b): #{a.equal?(b)}"

puts "ASSIGNMENT OPERATORS"
puts "a=b: #{a = b}"
puts "a+=b: #{a += b}"
puts "a-=b: #{a -= b}"
puts "a*=b: #{a *= b}"
puts "a/=b: #{a /= b}"
puts "a%=b: #{a %= b}"
a = 2
b = 3
puts "Now a = 2 and b = 3"
puts "a**=b: #{a **=b }"


puts "LOGICAL OPERATORS"
puts "1<5 and 3<5: #{1<5 and 3<5}"
puts "1<5 or 3>5 : #{1<5 or 3>5}"
puts "1<5 && 3>5 : #{1<5 && 3<5}"
puts "1<5 || 3>5 : #{1<5 || 3>5}"
puts "!(1<5 and 3<5): #{!(1<5 and 3<5)}"
puts "not(1<5 and 3<5): #{not(1<5 and 3<5)}"

