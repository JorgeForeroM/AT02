Given(/^admin user is define$/) do
  	expect($app_user).to_not be nil
end

When(/^I insert the user (\w+)$/) do |user|
  	@sw = false
  	$usersNames.each do |name|
  		if(name == user)
  			@sw = true
  		end
  	end
end

Then(/^I verify the user exist$/) do
  	expect(@sw).to be(true)
end


Then(/^I verify the user does not exist$/) do
  	expect(@sw).to be(false)
end
