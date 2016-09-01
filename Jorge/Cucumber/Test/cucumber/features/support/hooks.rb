Before do 
   $userNames = Users.load_users
   $messages = Users.load_messages
   $flight = Flight.load_fligth
   $list = Item.load_item
end

Before('@acceptance ') do 
	puts "\nRUNNING POSITIVE CASES"
end

After('@negative') do 
	puts "\nRUNNING NEGATIVE CASES"
end

