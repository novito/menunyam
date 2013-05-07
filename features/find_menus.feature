Feature: Find menus in restaurants
  In order to know see what can I eat around my area 
  As a user 
  I want to be able to see the daily menus that the restaurants are offering 

  Background:
    Given a city called "Barcelona"
    And a restaurant called "Les Palmeres" located in that city 
    And a menu called "Menu del dia" is offered today by that restaurant 
    And a first plate in that menu called "Amanida de la casa"
    And a first plate in that menu called "Sopa de peix"
    And a second plate in that menu called "Botifarra amb seques"
    And a second plate in that menu called "Sepia a la planxa"
    And a dessert plate in that menu called "Copa de gelat"
    And a dessert plate in that menu called "Flam de la casa"

Scenario: Find restaurants should let me choose the city 
    Given I am a visitor of the site
    When I go to the find menus page 
    Then I should see a "city_id" drop-down 
    And the "city_id" drop-down should contain the option "Barcelona"

