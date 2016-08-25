Feature: Airport

Scenario: flight 1
	Given the flight EZY4567 is leaving today
	When the passagers board the plane
	Then the plane take off

Scenario: flight 2
	Given the flight C038 is leaving today
	When the passagers board the plane
	Then the plane take off

Scenario: flight 3
	Given the flight BA01618 is leaving today
	When the passagers board the plane
	Then the plane take off
