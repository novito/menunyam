Feature: View homepage of the site 
  In order to know what the site is about 
  As a user 
  I want to see the home page

Scenario: Homepage should describe what the site is about
    Given I am a visitor of the site
    When I go to the home page
    Then I should see "Descubre que menus se ofrecen en los restaurantes cerca de tu zona"

Scenario: Homepage should show a link to search for menus
    Given I am a visitor of the site
    When I go to the home page
    Then I should see a link to the find menus page

