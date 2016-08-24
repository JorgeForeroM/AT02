#Copyright
#	This is a example of feature
#	@autor JorgeForero
#	@version 1.0

Feature: Testing google main page

Scenario: The main page appear
    Given I open the browser 
		And insert the link: www.google.com
	When I press enter
	Then The main page appear

Scenarie: Verify the button buscar
	Given I open the browser 
		And insert the link: www.google.com
	When I write something to search
		And click the button Google search
	Then The page desplayed the result of the search

Scenarie: Verify the button I'm feel lucky
	Given I open the browser 
		And insert the link: www.google.com
	When I write something to search
		And click the I'm feel lucky
	Then The page desplayed the first page of the search