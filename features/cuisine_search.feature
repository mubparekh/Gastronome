Feature: Search by cuisine
  As a user
  So that I can cook by what type of food I would like to eat
  I want to search recipes by cuisine type

Scenario: Display list of recipes by cuisine
  Given I am on the "Cuisine" page
  When I click on "French"
  Then I should be on the "Cuisine Search Results" page
  And I should have a list of "French" recipes

Scenario: Back to homepage
  Given I am on the "Cuisine" page
  When I click on "Back"
  Then I should be on the "Home" page

Scenario: Search result not matching to the type of cuisine searched
  Given I am on the "Cuisine" page
  When I click on "Korean"
  Then I should be on the "Cuisine Search Results" page
  And I should see "No Results Found"
