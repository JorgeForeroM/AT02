Given(/^comes the trainer$/) do
    
end

When(/^the door is close$/) do
    
end

Then(/^start the class$/) do
    
end


Given(/^I have my daily report$/) do |table|
    @@board = table.rows_hash
end

When(/^the (\w+) class (?:finish|began)$/) do |arg1|
    @@class = arg1
end

When(/^I change to (\w+)$/) do |state|
    puts "Estado actual #{state}"
    @@board[@@class] = state
end


When(/^the board should look like$/) do |expectedTable|
    expect(expectedTable.rows_hash).to eql(@@board)
end












