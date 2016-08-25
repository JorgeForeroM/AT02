Feature: Practice non capturing group
Write a feature file that contains 2 scenarios, each one with steps that need a step definition with:
1. Question mark modified for singular and plurar
2. Multiple captures of data
3. Noncapturing group

E.G. 1 scenario with a sentence to eat # of apples (aple if it is one), another with the amount of money to pay and the type of payment(credit card, money,etc)and some final step that can be described with different words. 

Scenario: Apples
	Given I want buy apples
		And I have 1 apple in my backpack
	When I buy 5 apples for 20 Bs
	Then I have 3 apples in my pack

Scenario: buy tickets in cinecenter
	Given I have 100 Bs in cash
		And I have 600 Bs in CreditCard
	When I buy 5 ticket to cinecenter
	Then I pay 1 ticket with cash
		And I pay 3 tickets using creditcard
       
