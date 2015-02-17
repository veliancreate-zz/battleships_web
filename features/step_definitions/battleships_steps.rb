Given(/^I am on the homepage$/) do
  visit('/')    
end

When(/^I follow the "(.*?)"$/) do |arg1|
  click_link(arg1)  
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

