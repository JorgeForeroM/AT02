Feature: Users
@normal @acceptance
Scenario: Verify some user exist
	Given admin user is define
	When I insert the user jorge 
	Then I verify the user exist
@normal @negative
Scenario: Verify some user does not exist
	Given admin user is define
	When  I insert the user alfredo 
	Then I verify the user does not exist
@outline
Scenario Outline: Verify list of users exist
	Given admin user is define
	When I insert the user <users> 
	Then I verify the user exist
Examples: 
	|users|
	|jorge|
	|angelica|
	|roy|
	|wally|
