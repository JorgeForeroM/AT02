Feature: Account Testing

Scenario: Sing in or creae account
	Given I select Sign in
	When I Write the username
		And I write the password 
	Then The main page appear
       
	Given I select Create and account
	When I introduce all the required dates
		And I press save
	Then The account is created


