When /^I go to the home page$/ do
    visit root_path
end

Then /^I should see "(.*?)"$/ do |message|
    page.should have_content message
end

Then /^I should see the link "(.*?)"$/ do |linktext|
    page.should have_link linktext
end

Given /^I am on the home page$/ do
    visit root_path
end

When /^I click "(.*?)"$/ do |xyz|
    click_link xyz
end