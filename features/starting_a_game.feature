Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		When I follow the "New Game"
		Then I should see "Welcome to Battleships!"

	Scenario: Creating a player
		Given you see a form on new_game
		When you enter your name and click submit 
		Then I should see a board






