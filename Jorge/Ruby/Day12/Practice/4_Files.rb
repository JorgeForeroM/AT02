def creatingFile
	
	file_expample = File.open('list.txt','w+')
	file_expample.truncate(0)
	file_expample.write("USER   |PASSWORD|TRAVEL_DATE|DESTINATION|\n")

	array = ["CBBA","CHQ","TRJ","LP","OR","PTS","PND","BN","SC"]
		
	100.times do |index|
		day = rand(1..30)
		month = rand(1..12)
		city = rand(0..8)
	    file_expample.write("USER_#{index + 1} | PASS_#{index + 1} | #{month}/#{day}/2016 | #{array[city]} |\n")
	end
	file_expample.close
end

creatingFile