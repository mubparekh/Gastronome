Feature: Allow users to rate and comment on recipes
  As a member
  So that I can recommend recipes I like and interact with other users
  I want to be able to rate and add comments to existing recipes

Scenario: Add a comment and rating
  Given I am on the "Show Recipe" page
  When I click on "New Comment"
  Then I should be on the "Add a Response" page

Scenario: Fill out the comment/rating page
  Given I am on the "Add a Response" page
  When I fill in "Rating" with "5"
  And I fill in "Comment" with "This is a good recipe."
  And I press "Create Response"
  Then I should be on the "Show Recipe" page
  And I should see a comment containing "This is a good recipe."

Scenario: Cancel adding comment/rating
  Given I am on the "Add a Response" page
  When I click on "Home"
  Then I should be on the "Home" page

Scenario: View edit page for comment/rating
  Given I am on the "Show Recipe" page
  When I click on "Edit comment/rating"
  Then I should be on the "Edit Response" page

Scenario: Make a change to a response
  Given I am on the "Edit Response" page
  When I fill in "Comment" with "Edit: nevermind"
  And I click on "Submit"
  Then I should be on the "Show Recipe" page
  And I should see a comment containing "Edit: nevermind"
