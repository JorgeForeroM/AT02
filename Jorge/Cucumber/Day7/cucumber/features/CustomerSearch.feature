Feature: customer search
@outline
Scenario Outline: name
	Given I search user <Name>
	When insert the ID <ID>
	Then I have priced: <Total>

Examples: 

	|Name|ID|Total|
	|jorge|23|564|
	|angelica|67|766|
	|roy|12|565|
	|wally|43|784| 

@normal
Scenario: search
	Given I search user jorge
	When insert the ID 23
	Then I have priced: 564

