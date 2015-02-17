Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		When I follow the "New Game"
		Then I should see "Welcome to Battleships!"

  Scenario: Creating a player
    Given I am on new_game page
    When I click on "Create player"
    Then I should see: "What's your name?"



