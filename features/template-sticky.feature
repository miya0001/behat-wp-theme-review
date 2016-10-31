Feature: Admin bar

  Scenario: Showing the "Template: Sticky"

    When I am on "/"
    Then I should see "Template: Sticky" in the ".entry-title" element

  Scenario: Showing the "Template: Sticky"

    When I am on "/template-sticky/"
    Then I should see "Template: Sticky" in the ".entry-title" element
