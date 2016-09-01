Feature: Simulate a reservation for a flight

Background: Login
	Given user jorge
	When insert password 123
	Then I see "Welcome"

@acceptance 
Scenario: possitive
	Given I have a list of item
	When I search cellphone
	Then I verify the item exist

@negative
Scenario: possitive
	Given I have a list of item
	When I search dog
	Then I verify the item does not exist
