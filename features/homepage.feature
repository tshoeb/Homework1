Feature: Home pages
    In order to have consistent pages for the website
    As a user
    I want to be able to see a home page
   
    Scenario: Home pages
        When I go to the home page
        Then I should see "Welcome to my page"
        And I should see the link "About Us"
        And I should see the link "Contact Us"
        And I should see the link "Privacy Policy"
        And I should see the link "Sign Up"
       
    Scenario: Follow Link About
        Given I am on the home page
        When I click "About Us"
        Then I should see "About Us"
   
    Scenario: Follow Link Contact
        Given I am on the home page
        When I click "Contact Us"
        Then I should see "Contact Us"

    Scenario: Follow Link Privacy
        Given I am on the home page
        When I click "Privacy Policy"
        Then I should see "Privacy Policy"

    Scenario: Follow Link Sign Up
        Given I am on the home page
        When I click "Sign Up"
        Then I should see "Sign Up"