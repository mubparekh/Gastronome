Feature: Add recipe to the database
	As a user
	So that I can share recipes with others
	I want to be able to add a recipe to the database
	
Scenario: Add a recipe to database
	Given I am on the "Add New Recipe" page
	When I fill in "Recipe Name" with "Grilled Cheese"
	And I press "Create Recipe"
	Then I should be on the "Show Recipe" page
	And I should see "Grilled Cheese"
	
Scenario: Error adding recipe
	Given I am on the "Add New Recipe" page
	When I fill in "Recipe Name" with "Chocolate Cake"
	And I press "Create Recipe"
	Then I should be on the "Recipe List" page
	And I should see "Error adding recipe"
	
Scenario: Returning to homepage
	Given I am on the "Add New Recipe" page
	When I click on "Home"
	Then I should be on the "Home" page