Feature: Filaments Page Tests
  Scenario: Selecting Filament Color
    Given I log in
    And I navigate to products
    And I select product "3D Filament"
    And I select part "PLA Filament"
    Then I select PLA Filament color "YLW"
    And I go back
    And I go back
    And I select part "ABS Filament"
    Then I select ABS Filament color "YLW"