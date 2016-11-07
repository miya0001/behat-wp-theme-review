Feature: Showing the singular pages

* The title should be displayed with PC and mobile.

  Scenario Outline: The title should see with PC and Mobile
    Given I am on "/?name=<slug>"

    When the screen size is 1440x900
    Then I should see "<title>" in the ".entry-title" element
    And take a screenshot and save it to "screenshots/<slug>-1440x900.png"

    When the screen size is 320x400
    Then I should see "<title>" in the ".entry-title" element
    And take a screenshot and save it to "screenshots/<slug>-320x400.png"

    Examples:
      | slug                            | title                            |
      | template-sticky                 | Template: Sticky                 |
      | markup-html-tags-and-formatting | Markup: HTML Tags and Formatting |
      | markup-image-alignment          | Markup: Image Alignment          |
      | markup-text-alignment           | Markup: Text Alignment           |
