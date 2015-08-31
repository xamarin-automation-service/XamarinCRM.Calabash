Feature: Customers Tests

  Scenario: Check Customer Details
    Given I log in
    And I navigate to customers page
    And I click the first contact
    Then I verify contact info is present

  Scenario: Investigate Customer Page
    Given I log in
    And I navigate to customers page
    And I click the first contact
    And I navigate to customer orders page
    And I navigate to customer sales page

  Scenario: Check Customer Navigation
    Given I log in
    And I navigate to customers page
    And I click the first contact
    Then I check the navigation

  Scenario: Check Customer Phone
    Given I log in
    And I navigate to customers page
    And I click the first contact
    Then I check the phone

