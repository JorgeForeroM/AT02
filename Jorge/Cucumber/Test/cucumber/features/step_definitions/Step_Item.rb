Given(/^I have a list of item$/) do

  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I search (\w+)$/) do |item|
	@sw = false
  	$list.each do |items|
  		if(items == item)
  			@sw = true
  		end
  	end
end

Then(/^I verify the item exist$/) do
	expect(@sw).to be(true)
end


Then(/^I verify the item does not exist$/) do
	expect(@sw).to be(false)
	puts "That item not found"
end