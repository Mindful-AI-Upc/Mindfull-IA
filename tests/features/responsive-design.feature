Feature: Responsive Design
  As a user
  I want the website to work well on different devices
  So that I can access Mindful-AI from any device

  Background:
    Given the Mindful-AI website is deployed

  Scenario: Desktop view layout
    Given I am viewing the site on a desktop browser
    When I set the viewport to 1920x1080 pixels
    Then the layout should display in desktop format
    And the navigation should be horizontal
    And all elements should be properly spaced
    And images should be at full resolution

  Scenario: Tablet view layout
    Given I am viewing the site on a tablet
    When I set the viewport to 768x1024 pixels
    Then the layout should adapt to tablet format
    And the navigation should remain accessible
    And content should be properly scaled
    And touch targets should be appropriately sized

  Scenario: Mobile view layout
    Given I am viewing the site on a mobile device
    When I set the viewport to 375x667 pixels
    Then the layout should adapt to mobile format
    And the navigation should collapse to a mobile menu
    And content should stack vertically
    And all text should be readable without zooming

  Scenario: Portrait to landscape orientation change
    Given I am viewing the site on a mobile device in portrait mode
    When I rotate the device to landscape mode
    Then the layout should adapt to the new orientation
    And all content should remain accessible
    And no elements should be cut off

  Scenario Outline: Responsive breakpoints
    When I set the viewport width to <width> pixels
    Then the page should display the appropriate layout for <device_type>
    And all interactive elements should be accessible

    Examples:
      | width | device_type    |
      | 320   | small mobile   |
      | 375   | mobile         |
      | 768   | tablet         |
      | 1024  | small desktop  |
      | 1440  | desktop        |
      | 1920  | large desktop  |

  Scenario: Touch-friendly interface on mobile
    Given I am on a mobile device
    When I interact with buttons and links
    Then all touch targets should be at least 44x44 pixels
    And there should be adequate spacing between clickable elements
    And scrolling should be smooth

  Scenario: Image responsiveness
    Given I am viewing a page with images
    When I resize the browser window
    Then images should scale proportionally
    And images should not overflow their containers
    And image quality should remain acceptable

  Scenario: Font scaling across devices
    When I view the site on different screen sizes
    Then font sizes should scale appropriately
    And text should be readable at all breakpoints
    And line heights should maintain readability

  Scenario: Hero section responsiveness
    Given I am on the landing page
    When I resize the browser from desktop to mobile
    Then the hero section should adapt gracefully
    And the background image should remain visible
    And the call-to-action button should stay prominent
    And text should remain centered and readable
