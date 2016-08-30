Given /^I have authenticated with the correct PIN$/ do
steps %{
	And I have pushed my card into the slot
	And I enter my PIN
	And I press "OK"
}
end

Given(/^I have pushed my card in the slot$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter my PIN$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the main menu$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have pushed my card into the slot$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


