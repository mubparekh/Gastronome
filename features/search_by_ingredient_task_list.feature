Feature: Display a list of recipes filtered by ingredient(s)
	As a user
	So that I can choose what to cook based of of what ingredients I have
	I want to search for recipes by ingredient(s)
	
Scenario: Search by ingredient
	Given I am on the "Search by Ingredients" page
	When I fill in "Ingredient" with "cheese"
	And I click on "Ingredient"
	Then I should be on the "Search Results" page
	And I should see a list of recipes containing "cheese"
	
Scenario: Search by multiple ingredients
	Given I am on the "Search by Ingredients" page
	When I fill in "Ingredient" with "salt" & "cauliflower"
	And I click on "Ingredient"
	Then I should be on the "Search Results" page
	And I should see recipes containing "salt" and "cauliflower"
	
Scenario: Returning to homepage
	Given I am on the "Search by Ingredients" page
	When I press "Back"
	Then I should be on the "Home" page
	
Scenario: Returning no results
	Given I am on the "Search by Ingredients" page
	When I fill in "Ingredient" with "cheese"
	And I click on "Ingredient"
	Then I should be on the "Search Results" page
	And I should see "No Results Found"
