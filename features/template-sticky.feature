Feature: Showing the "Template: Sticky"

  Scenario: Showing the "Template: Sticky"

    When I am on "/template-sticky/"
    Then I should see "Template: Sticky" in the ".entry-title" element
    And take the screenshot to "screenshots/template-sticky.fature"
