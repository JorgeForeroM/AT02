#Example Blocks
def method_block
	result = 0
	result = yield 
	puts "The value obtanined is #{result}"
end

 method_block {result = 15 * 25}

 method_block {
	puts "I changed the value into the block"
	result = result == 0? 25+15 : 25*5

}

method_block {result = 150 / 25}
