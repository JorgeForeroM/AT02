Feature: Withdraw Fixed Amount
The "Withdraw Cash" menu contains several fixed amounts to
speed up transactions for users.

Scenario Outline: Withdraw fixed amount 

    Given I have <BALANCE> in my own account
    When I choose to withdraw the fixed amount of <WITHDRAWAL>
    Then I should receive <RECEIVED> cash
    	And the balance of my account should be <REMAINING>

Examples:
	| BALANCE | WITHDRAWAL | RECEIVED | REMAINING |
	| $500    | $50        | $50      | $450      |
	| $500    | $100       | $100     | $400      |
	| $500    | $200       | $200     | $300      |
	| $500    | $300       | $300     | $200      |
