Given(/^I am on the homepage$/) do
  visit('/')    
end

When(/^I follow the "(.*?)"$/) do |arg1|
  click_link(arg1)  
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^I am on new_game$/) do
  visit('/new_game')
end

When(/^I enter my name in the form$/) do
  fill_in('name', :with=>'Julian') 
end

When(/^I click submit$/) do
  click_button('Submit')
end

Then(/^I should see a board$/) do
  expect(find('table#battleships_board'))
end

Given(/^a logged in user called "(.*?)"$/) do |arg1|
  visit("/new_game")
  fill_in('name', :with=>arg1)
  click_button('Submit')
end

Given(/^I see a form to enter a shot$/) do
  fill_in('shoot_on', :with=>'B6') 
end

When(/^you shoot on a coordinate$/) do
  click_button('shoot')
end

Then(/^I should be told that I have shot$/) do
  expect("/game").to have_content('false')
end

Given(/^my opponents ships have all sunk$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I am the winner$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be told that "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
