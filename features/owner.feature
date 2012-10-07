Feature: Owner
In order to correspond with human owners
As a vet
I want to collect owner information

    Scenario: Valid_Owner
    Given I am on the 'new owner' page
    When I enter "Daniel" for "First name"
    And I enter "Phelps" for "Last name"
    And I enter "Doha" for "City"
    And I select "Qatar" for "Country"
    And I enter "dphelps@cmu.edu" for "Email"
    And I enter "+97444548624" for "Phone"
    And I check "Active"
    And I click button "Create"
    Then I should see owner"Created new owner Daniel Phelps"

    Scenario: Edit_Owner
    Given I am on the 'new owner' page
    When I enter "Daniel" for "First name"
    And I enter "Phelps" for "Last name"
    And I enter "Doha" for "City"
    And I select "Qatar" for "Country"
    And I enter "dphelps@cmu.edu" for "Email"
    And I enter "+97444548624" for "Phone"
    And I check "Active"
    And I click button "Create"
    And I click link "Edit"
    And I enter "Talal" for "First name"
    And I enter "Shoeb" for "Last name"
    And I click button "Update Owner"
    Then I should see owner"Owner was successfully updated."

    Scenario: Delete_Owner
    Given I am on the 'new owner' page
    When I enter "Daniel" for "First name"
    And I enter "Phelps" for "Last name"
    And I enter "Doha" for "City"
    And I select "Qatar" for "Country"
    And I enter "dphelps@cmu.edu" for "Email"
    And I enter "+97444548624" for "Phone"
    And I check "Active"
    And I click button "Create"
    And I click link "Back"
    And I click link "Destroy"
    And I confirm alert box
    Then I should see owner"Owner was successfully deleted"