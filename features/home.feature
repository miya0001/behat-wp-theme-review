Feature: Showing the "Template: Sticky"

* It should always be diysplayed in the Home.
* The title should be displayed with PC and mobile.

  Scenario: Showing the Home
    Given I am on "/"

    When the screen size is 1440x900
    Then I should see "Template: Sticky" in the ".post:first-child .entry-title" element
    And take a screenshot and save it to "screenshots/template-sticky-01.png"

    When the screen size is 320x400
    Then I should see "Template: Sticky" in the ".post:first-child .entry-title" element
    And take a screenshot and save it to "screenshots/template-sticky-02.png"
