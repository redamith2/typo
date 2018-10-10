Feature: Create and Save Categories
  As an blog administrator
  In order to share my thoughts to the world
  I want to be able to add categories to my blog
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit categories
    Given I am on the new categories page
        When I fill in "category_name" with "Movies"
        And I fill in "category_keywords" with "Action"
        And I fill in "category_permalink" with "movies_link"
        And I fill in "category_description" with "Action Movies description"
        And I press "Save"
        Then I should see "Movies"
        Then I should see "Action"
        Then I should see "movies_link"
        Then I should see "Action Movies description"
        #editing categories
        Then I follow "Movies"
        And I fill in "category_name" with "Transport"
        And I fill in "category_keywords" with "Cars,Trucks"
        And I fill in "category_permalink" with "nothing"
        And I fill in "category_description" with "Vechicle description"
        And I press "Save"
        Then I should see "Transport"
        Then I should see "Cars,Trucks"
        Then I should see "nothing"
        Then I should see "Vechicle description"