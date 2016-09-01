Given(/^user (\w+)$/) do |user|
    @user = user
end

When(/^insert password (\d+)$/) do |pass|
    password = $userNames[@user]
    expect(password).to eql(pass.to_i)
end

Then(/^I see "([^"]*)"$/) do |message|
    puts @validation
    expect($messages[@user].to_s).to eql(message) 
end

Given(/^The origin is (\w+)$/) do |origin|
    @origin = origin
end

Given(/^The destiny is (\w+)$/) do |destiny|
    @destiny = destiny
end

When(/^the Date is (.*)$/) do |date|
    @date = date 
end

When(/^the flight is (\d+)$/) do |flight|
    @flight = flight.to_i

end


Then(/^the avalibility should be (\w+)$/) do |avalibility|
    #sw = false
    #$flight.each do |hashes|
    #    sw = hashes.has_value?(avalibility)
    #end
    found = false
    flight = {      
      'From' => @origin,
      'To' => @destiny,
      'Date' => @date,
      'flight' => @flight,
      'Available' => avalibility
    }

    $flight.each do |hashes|
        if(hashes == flight)
          found = true
        end
    end
    expect(found).to be true

end

