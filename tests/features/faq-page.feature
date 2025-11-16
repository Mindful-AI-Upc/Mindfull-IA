Feature: FAQ Page
  As a user with questions about Mindful-AI
  I want to access a FAQ page
  So that I can find answers to common questions

  Background:
    Given I am on the Mindful-AI website

  Scenario: Access FAQ page
    Given I am on the landing page
    When I click on the "FAQs" navigation link
    Then I should be redirected to the FAQ page
    And I should see a list of frequently asked questions

  Scenario: View FAQ categories
    Given I am on the FAQ page
    Then I should see questions organized by categories
    And categories should be clearly labeled
    And categories might include "General", "Servicios", "Privacidad", "Técnicas"

  Scenario: Expand FAQ answer
    Given I am on the FAQ page
    When I click on a FAQ question
    Then the answer should expand and become visible
    And other expanded answers should remain visible or collapse (depending on design)

  Scenario: Collapse FAQ answer
    Given I have expanded a FAQ answer
    When I click on the question again
    Then the answer should collapse and hide

  Scenario: Search FAQs
    Given I am on the FAQ page
    And there is a search functionality
    When I type "precio" in the search box
    Then only FAQs containing "precio" should be displayed
    And other FAQs should be filtered out

  Scenario: Navigate between FAQ categories
    Given I am on the FAQ page
    And FAQs are organized in categories
    When I click on a category tab or link
    Then I should see FAQs from that category
    And the selected category should be highlighted

  Scenario: No results found for search
    Given I am on the FAQ page
    When I search for "xyz123nonexistent"
    Then I should see a message "No FAQs found matching your search"
    And I should see a suggestion to "Try different keywords"

  Scenario: FAQ accordion behavior
    Given I am on the FAQ page
    When I click to expand a question
    Then the answer should slide down smoothly
    And an icon should indicate the expanded state (e.g., minus sign)

  Scenario: Link to contact from FAQ
    Given I am on the FAQ page
    And my question is not answered
    When I look for additional help
    Then I should see a "Contact Us" or "Still have questions?" section
    And clicking it should take me to a contact form or email

  Scenario: FAQ responsive design
    Given I am on the FAQ page
    When I view it on a mobile device
    Then all FAQs should be accessible
    And the expand/collapse functionality should work with touch
    And text should be readable without zooming
