def test_block
   puts "You are in the method"
   
   yield
   
   puts "You are again back to the method"
   
   yield
end

test_block {puts "You are in the block"}

test_block {puts "Hello"}
