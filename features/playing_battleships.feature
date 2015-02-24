Feature: playing_battleships
	In order to play battleships
	As a player
	I want to be able to take a shot

	Scenario: Shooting
		Given a logged in user called "Thomas"
		Given I see a form to enter a shot
		When you shoot on a coordinate
		Then I should be told that I have shot

	Scenario: Logging a shot
		Given a logged in user called "Julian"
		When I have successfully hit a Ship
		Then I should be told that I have hit the ship

	Scenario: Winner
		Given my opponents ships have all sunk
		When I am the winner
		Then I should be told that "You have have won!"