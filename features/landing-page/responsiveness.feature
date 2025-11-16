Feature: Landing Page Responsiveness
  As a visitor
  I want the landing page to work on different devices
  So that I can access it from any device (mobile, tablet, desktop)

  Scenario: Landing page renders correctly on desktop
    Given I am viewing the page on a desktop browser
    And the viewport width is 1920 pixels
    Then all sections should be visible
    And the navigation menu should be horizontal
    And images should be displayed at full resolution
    And text should be easily readable

  Scenario: Landing page renders correctly on tablet
    Given I am viewing the page on a tablet device
    And the viewport width is 768 pixels
    Then all sections should adapt to the screen size
    And the navigation menu should remain accessible
    And images should be appropriately sized
    And text should remain readable

  Scenario: Landing page renders correctly on mobile
    Given I am viewing the page on a mobile device
    And the viewport width is 375 pixels
    Then all sections should stack vertically
    And the navigation should use a hamburger menu
    And images should be optimized for mobile
    And text should be at least 16px for readability
    And touch targets should be at least 44x44 pixels

  Scenario: Images are responsive
    Given I am viewing the landing page
    When I resize the browser window from desktop to mobile size
    Then all images should scale proportionally
    And no images should overflow the viewport
    And image quality should remain acceptable

  Scenario: Navigation adapts to screen size
    Given I am on a desktop browser
    Then I should see a horizontal navigation bar
    When I resize the window to mobile size
    Then the navigation should transform to a hamburger menu
    When I click the hamburger menu
    Then the navigation items should slide in from the side

  Scenario: Text remains readable on small screens
    Given I am viewing the page on a mobile device
    Then all headings should be legible
    And body text should be at least 16px
    And line height should provide comfortable reading
    And there should be adequate spacing between elements

  Scenario: Buttons and links are touch-friendly
    Given I am viewing the page on a mobile device
    Then all buttons should be at least 44x44 pixels
    And links should have adequate spacing
    And touch targets should not overlap
    And buttons should have visible tap states
