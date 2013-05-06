Feature: Find menus in restaurants
  In order to know see what can I eat around my area 
  As a user 
  I want to be able to see the daily menus that the restaurants are offering 

Scenario: Find restaurants should let me choose the city 
    Given I am a visitor of the site
    When I go to the find menus page 
    Then I should see a "city" drop-down 
    And the "city" drop-down should contain the option "Barcelona"

