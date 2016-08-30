Before('@outline') do |scenario|
  	puts "\nI am running an outline scenario: #{scenario.name}"
end

Before('@normal') do |scenario|
  	puts "\nI am running a normal scenario: #{scenario.name}"
end

After('@outline') do |scenario|
	puts "\nI finished running the outline scenario"
    if scenario.failed?
    	puts  "Faile#{scenario.exception.message}" 
    end
end

After('@normal') do |scenario|
	puts "\nI finished running a normal scenario"
    if scenario.failed?
    	puts  "Faile#{scenario.exception.message}" 
    end
end

Before('@normal, @outline') do 
	puts "\nCUSTOMER SEARCH TEST"
end

After('@outline','~@normal') do 
	puts "\nSEARCHIN.."
end

