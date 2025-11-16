Feature: Landing Page Navigation
  As a visitor to the Mindful-AI website
  I want to navigate through different sections
  So that I can learn about the services and access different features

  Background:
    Given I am on the Mindful-AI landing page
    And the page has loaded completely

  Scenario: View landing page header
    When I look at the page header
    Then I should see the "Mindful-AI" logo
    And I should see navigation links for "Home", "Nosotros", "Blog", "FAQs", "Reseñas"
    And I should see "Iniciar sesión" button
    And I should see "Registrarse" button

  Scenario: Navigate to About Us page
    When I click on the "Nosotros" link in the navigation
    Then I should be redirected to the About Us page
    And the URL should contain "nosotros.html"

  Scenario: Navigate to Blog page
    When I click on the "Blog" link in the navigation
    Then I should be redirected to the Blog page
    And the URL should contain "blog.html"

  Scenario: Navigate to FAQs page
    When I click on the "FAQs" link in the navigation
    Then I should be redirected to the FAQs page
    And the URL should contain "faqs.html"

  Scenario: Navigate to Login page
    When I click on the "Iniciar sesión" button
    Then I should be redirected to the Login page
    And the URL should contain "login.html"

  Scenario: Navigate to Registration page
    When I click on the "Registrarse" button
    Then I should be redirected to the Registration page
    And the URL should contain "register.html"

  Scenario: Mobile navigation responsiveness
    Given I am viewing the page on a mobile device
    When I resize the browser to mobile width
    Then the navigation should adapt to mobile layout
    And all navigation items should be accessible

  Scenario: Return to home from navigation
    Given I am on any page of the website
    When I click on the "Mindful-AI" logo
    Then I should be redirected to the home page
    And I should see the hero section

  Scenario: Smooth scrolling to sections
    Given I am on the landing page
    When I click on the "Home" link
    Then the page should smoothly scroll to the hero section
    And the hero section should be visible in the viewport
