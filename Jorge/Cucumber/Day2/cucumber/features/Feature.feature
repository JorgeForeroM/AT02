#Copyright
#	This is a example of feature
#	@autor JorgeForero
#	@version 1.0

Feature: The first feature title

	This is a example of feature

Scenario: Attempt withdrawal using stolen card

	Given I have $100 in my account
		And my card is invalid
	When I request $50
	Then my card should not be returned
		And I should be told to contact the bank

