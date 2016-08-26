Feature: Daily Activities

Background: start the class
	Given comes the trainer 
	When the door is close
	Then start the class


Scenario: Class SWF
	Given I have my daily report
		| Class    |  State       |
		| SWF      |  Pending     |
		| BDT      |  Pending     |  
		| PROG01   |  Pending     |  
	When the PROG01 class began 
	And I change to InProgress
		And the board should look like
	| Class |  State       |
	| SWF      |   Pending    |
	| BDT      |   Pending    |  
	| PROG01   |   InProgress | 

	When the PROG01 class finish
	Then I change to Done
		And the board should look like
		| Class  |  State       |
		| SWF      |  Pending     |
		| BDT      |  Pending     |  
		| PROG01   |  Done        | 


Scenario: class prog101
	When the SWF class began
		And I change to InProgress
	
	Then the board should look like
		| Class  |  State       |
		| SWF      |  InProgress   |
		| BDT      |  Pending |  
		| PROG01   |  Done     | 

	