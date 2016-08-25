Feature: Validation steps
	Add validation steps for :
	 ZipCode (only digits)
      Username (only lower case)
      Country  (any character except digits)

Scenario: add values
	Given I have a zipCode 3254
		And UserName jorgebrian
		And Country Bolivia

Scenario: validation
	Given I have a zipCode e3254
		And UserName jorgebrian23
		And Country Bolivia34