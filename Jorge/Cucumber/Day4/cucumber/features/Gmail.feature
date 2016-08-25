Feature: Gmail

Scenario: new gmail account
	Given I write in name Jorge
		And in last name Forero
		And in username jorgebrian
		And in password Jb&11542
		And in password confirm Jb&11542
		And in month select January 
		And in day selected 23 
		And in year select 1992
		And in gender select Male
		And in movile phone write 70268628
		And in current e-mail address write jorgeforero@gmail.com
	When I press save
	Then The account is created