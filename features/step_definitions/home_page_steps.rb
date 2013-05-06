Given /^I am a visitor of the site$/ do
end

Then /^I should see a link to the find menus page$/ do
  page.should have_link('Busca menus!', menus_path)
end
