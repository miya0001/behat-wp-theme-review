Feature: Showing the "Template: Sticky"

* It should always be diysplayed in home.
* The title should be displayed with PC and mobile.

  Scenario: Showing the "Template: Sticky" with PC
    Given the screen size is 1440x900

    When I am on "/template-sticky/"
    Then I should see "Template: Sticky" in the ".entry-title" element
    And take a screenshot and save it to "screenshots/template-sticky-1440x900.png"

  Scenario: Showing the "Template: Sticky" with mobile
    Given the screen size is 320x400

    When I am on "/template-sticky/"
    Then I should see "Template: Sticky" in the ".entry-title" element
    And take a screenshot and save it to "screenshots/template-sticky-320x400.png"
