Feature: Showing the "Markup: HTML Tags and Formatting"

* The title should be displayed with PC and mobile.

  Scenario: Showing the "Markup: HTML Tags and Formatting" at the single page
    Given I am on "/?name=markup-html-tags-and-formatting"

    When the screen size is 1440x900
    Then I should see "Markup: HTML Tags and Formatting" in the ".entry-title" element
    And take a screenshot and save it to "screenshots/markup-html-tags-and-formatting-01.png"

    When the screen size is 320x400
    Then I should see "Markup: HTML Tags and Formatting" in the ".entry-title" element
    And take a screenshot and save it to "screenshots/markup-html-tags-and-formatting-02.png"
