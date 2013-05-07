Feature: Find menus in restaurants
  In order to know see what can I eat around my area 
  As a user 
  I want to be able to see the daily menus that the restaurants are offering 

  Background:
    Given a city called "Barcelona"
    And a restaurant called "Les Palmeres" located in that city 
    And a menu called "Menu del dia a les Palmeres" is offered today by that restaurant 
    And a "primer" plate in that menu called "Amanida de la casa"
    And a "primer" plate in that menu called "Sopa de peix"
    And a "segon" plate in that menu called "Botifarra amb seques"
    And a "segon" plate in that menu called "Sepia a la planxa"
    And a "postre" plate in that menu called "Copa de gelat"
    And a "postre" plate in that menu called "Flam de la casa"

Scenario: Find restaurants should let me choose the city 
    Given I am a visitor of the site
    When I go to the find menus page 
    Then I should see a "city_id" drop-down 
    And the "city_id" drop-down should contain the option "Barcelona"

Scenario: Find restaurant should show me results for a selected city
    Given I am a visitor of the site
    When I go to the find menus page 
    And I select the city of "Barcelona"
    Then I should see "Menus a Barcelona"
    And I should see "Menu del dia a les Palmeres" 
    And I should see "Primers plats" 
    And I should see "Amanida de la casa" 
    And I should see "Sopa de peix" 
    And I should see "Segons plats" 
    And I should see "Botifarra amb seques" 
    And I should see "Sepia a la planxa" 
    And I should see "Copa de gelat" 
    And I should see "Flam de la casa" 

