When /^I go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^A (.+) link should not exist$/ do |link_name|
  page.has_no_link?(link_name)
end

And /^(?:|I )press the button "([^"]*)"$/ do |button|
  click_button(button)
end

