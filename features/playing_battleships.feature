Feature: playing_battleships
	In order to play battleships
	As a player
	I want to be able to take a shot

	Scenario: Shooting
		Given I see a form to enter a shot
		When you shoot on a coordinate
		Then I should be told if I have hit

	Scenario: Winner
		Given my opponents ships have all sunk
		When I am the winner
		Then I should be told that "You have have won!"