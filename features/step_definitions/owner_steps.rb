Given /^I am on the 'new owner' page$/ do
    visit new_owner_path
end

Given /^I am on the 'edit owner' page$/ do
 	visit edit_owner_path(owner)
end

When /^I enter "(.*?)" for "(.*?)"$/ do |value, field|
    fill_in field, :with => value
end

When /^I select "(.*?)" for "(.*?)"$/ do |value, selectboxname|
    select value, :from => selectboxname
end

When /^I check "(.*?)"$/ do |checkboxname|
    check checkboxname
end

When /^I click link "(.*?)"$/ do |abc|
  click_link abc
end


When /^I click button "(.*?)"$/ do |buttonname|
    click_button buttonname
end

When /^I confirm alert box$/ do
 	alert = page.driver.browser.switch_to.alert
	alert.ok
end

Then /^I should see owner"(.*?)"$/ do |output|
    page.should have_content output
end