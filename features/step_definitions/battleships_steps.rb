Given(/^I am on the homepage$/) do
  visit('/')    
end

When(/^I follow the "(.*?)"$/) do |arg1|
  click_link('New Game')  
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).has_content?("Welcome to Battleships")    
end