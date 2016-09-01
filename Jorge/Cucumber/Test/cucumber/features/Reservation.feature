Feature: Simulate a reservation for a flight

Background: Login
	Given user jorge
	When insert password 123
	Then I see "Welcome"

@outline
Scenario Outline: flight
	Given The origin is <Origin>
		And The destiny is <Destiny>
	When the Date is <Date>
		And the flight is <Flight>
	Then the avalibility should be <Available>

Examples:
	|Origin|Destiny|Date      |Flight|Available|
	|CBJ   |CBA    |09/01/2016|375   |OK       |
	|BEN   |CBA    |09/02/2016|475   |OK       |
	|SC    |CBA    |09/01/2016|575   |OK       |

	
