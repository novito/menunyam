And /^the "([^"]*)" drop-down should contain the option "([^"]*)"$/ do |id, value|
  page.should have_xpath "//select[@id = '#{id}']/option[@value = '#{value}']"
end

Given /^a city called "([^"]*)"$/ do |city_name|
  @city = FactoryGirl.create(:city, :name => city_name)
end

And /^a restaurant called "([^"]*)" located in that city$/ do |city_name|
  @restaurant = FactoryGirl.create(:restaurant, :city => @city)
end

And /^a menu called "([^"]*)" is offered today by that restaurant$/ do |menu_name| 
  @menu = FactoryGirl.create(:menu, :name => menu_name, :restaurant => @restaurant, :date => Date.today)
end

