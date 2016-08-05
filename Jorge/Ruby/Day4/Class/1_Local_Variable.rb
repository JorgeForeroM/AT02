def test_local_variables
   value = 5
   another_value = 10
   addition_of_values = value + another_value 
   puts addition_of_values 
   puts local_variables # show the list of local variable of the method
end

test_local_variables
#puts addition_of_values
#I can't puts the local variable because only work in the method

