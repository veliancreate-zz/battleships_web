Given(/^I am on the homepage$/) do
  visit('/')    
end

When(/^I follow the "(.*?)"$/) do |arg1|
  click_link(arg1)  
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end





Given(/^I am on new_game page$/) do
  visit('new_game')
end

When(/^I click on "(.*?)"$/) do |create_player|
  click_link(create_player)
end

Then(/^I should see: "(.*?)"$/) do |arg1|
  expect(page).fill_in('Player name', :with => "John")
end