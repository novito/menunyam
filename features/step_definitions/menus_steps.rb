And /^the "([^"]*)" drop-down should contain the option "([^"]*)"$/ do |id, value|
  page.should have_xpath "//select[@id = '#{id}']/option[@value = '#{value}']"
end

