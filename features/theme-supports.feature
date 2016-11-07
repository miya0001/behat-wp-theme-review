Feature: Theme customizer features

  Scenario Outline: Theme customizer
    Given I login as the "administrator" role
    And I am on "/wp-admin/customize.php"

    When the screen size is 1440x900
    Then I should see "<customizer>" in the "#customize-theme-controls" element

    Examples:
      | customizer        |
      | Site Identity     |
      | Colors            |
      | Header Image      |
      | Background Image  |
      | Menus             |
      | Widgets           |
      | Static Front Page |
