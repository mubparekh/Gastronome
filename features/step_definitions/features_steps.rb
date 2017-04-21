Given(/^I am on the "(.*?)" page$/) do |page_name|
  visit path_to(page_name)
end

When(/^I enter the type of "(.*?)" as "(.*?)"$/) do |cuisine, type|
  search_cuisine(cuisine, :type => type)
end

When (/^(?:|I )press "([^"]*)"$/) do |button|
  click_link_or_button(button)
end

When(/^I click the "(.*?)" button$/) do |button|
  element = find('a', :text => button)
  element.click
end

When /^I click on "([^\"]+)"$/ do |text|
  element = find('a', :text => text)
  element.click
end

Then(/^I should have a list of "(.*?)" recipes$/) do |cuisine|
  @recipes = Recipe.where(cuisine_type: cuisine)
end

When (/^(?:|I )fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When (/^(?:|I )fill in "([^"]*)" with "([^"]*)" & "([^"]*)"$/) do |field, value1, value2|
  fill_in(field, :with => value1)
end

Then (/^(?:|I )should be on the "(.*?)" page$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(response).to have_content(text)
end

Then(/^I should see a list of recipes containing "(.*?)"$/) do |text|
  expect(response).to have_content(text)
end

Then(/^I should see recipes containing "(.*?)" and "(.*?)"$/) do |text1, text2|
  expect(response).to have_content(text)
end

Then(/^I should see a comment containing "(.*?)"$/) do |text|
  response.should contain(text)
end
