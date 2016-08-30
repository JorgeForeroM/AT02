Given(/^I search user (\w+)$/) do |user|
  	#pending # Write code here that turns the phrase above into concrete actions
  	clients = client.clients_id
  	result = clients.has_key?(user)
  	expect(result).to be true
end

When(/^insert the ID (\d+)$/) do |id|
  	#pending # Write code here that turns the phrase above into concrete actions
  	clients = client.priced
  	result = clients.has_key?(id.to_i)
  	expect(result).to be true
end

Then(/^I have priced: (\d+)$/) do |price|
  	#pending # Write code here that turns the phrase above into concrete actions
  	clients = client.priced
  	result = clients.has_value?(price.to_i)
  	expect(result).to be true
end


