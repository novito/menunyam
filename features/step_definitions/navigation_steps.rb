When /^I go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

And /^I press (.+)$/ do |link_name|
  click_link(link_name)
end

Then /^A (.+) link should not exist$/ do |link_name|
  page.has_no_link?(link_name)
end

