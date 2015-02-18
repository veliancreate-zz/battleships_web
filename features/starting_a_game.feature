Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		When I follow the "New Game"
		Then I should see "Welcome to Battleships!"

	Scenario: Creating a player
		Given I am on new_game
		When I enter my name in the form 
		And I click submit 
		Then I should see a board






