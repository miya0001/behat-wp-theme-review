Feature: Theme customizer features

  @javascript
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

  @javascript
  Scenario: Take a screenshot
    Given I login as the "administrator" role
    And I am on "/wp-admin/customize.php"

    When the screen size is 1440x900
    And I wait for 5 seconds
    Then take a screenshot and save it to "screenshots/wp-admin-customize-1440x900.png"

    When the screen size is 320x400
    Then take a screenshot and save it to "screenshots/wp-admin-customize-320x400.png"
