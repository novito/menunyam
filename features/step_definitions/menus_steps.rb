And /^the "([^"]*)" drop-down should contain the option "([^"]*)"$/ do |id, value|
  city = City.find_by_name(value)
  page.should have_xpath "//select[@id = '#{id}']/option[@value = '#{city.id}']"
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

And /^a "([^"]*)" plate in that menu called "([^"]*)"$/ do |plate_type, plate_name| 
  @plate = FactoryGirl.create(:plate, :type => plate_type, :name => plate_name, :menu => @menu)
end

And /^I select the city of "([^"]*)"$/ do |city_name|
  select(city_name, :from => 'city_id')
end


