Then /^I should see "([^\"]*)"$/ do |content|
  page.should have_content(content)
end

Then /^I should see a "([^\"]*)" drop-down$/ do |select|
  page.should have_select(select)
end
