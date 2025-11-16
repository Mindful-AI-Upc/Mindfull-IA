Feature: Landing Page Navigation
  As a visitor
  I want to navigate through the landing page
  So that I can learn about Mindful-AI and its features

  Background:
    Given I am on the Mindful-AI landing page

  Scenario: View landing page hero section
    Then I should see the main heading "Inspira. Conecta. Sana."
    And I should see the tagline "Tu asistente para el bienestar digital"
    And I should see a "Regístrate gratis" button
    And I should see the hero background image

  Scenario: Navigate to About Us page
    When I click on the "Nosotros" navigation link
    Then I should be redirected to the About Us page
    And the page URL should contain "nosotros.html"

  Scenario: Navigate to Blog page
    When I click on the "Blog" navigation link
    Then I should be redirected to the Blog page
    And the page URL should contain "blog.html"

  Scenario: Navigate to FAQs page
    When I click on the "FAQs" navigation link
    Then I should be redirected to the FAQs page
    And the page URL should contain "faqs.html"

  Scenario: Navigate to Login page
    When I click on the "Iniciar sesión" navigation link
    Then I should be redirected to the Login page
    And the page URL should contain "login.html"

  Scenario: Navigate to Registration page
    When I click on the "Registrarse" button in navigation
    Then I should be redirected to the Registration page
    And the page URL should contain "register.html"

  Scenario: View features and services section
    When I scroll to the "Funciones y servicios" section
    Then I should see the section title "Funciones y servicios"
    And I should see "Aplicación móvil" feature card
    And I should see "Plataforma web" feature card
    And I should see "Recomendaciones" feature card

  Scenario: View project showcase section
    When I scroll to the "Algunos proyectos" section
    Then I should see the section title "Algunos proyectos"
    And I should see 4 project images

  Scenario: Submit newsletter subscription
    When I scroll to the contact section
    And I enter a valid email "subscriber@example.com" in the newsletter field
    And I click the "Subscribe now" button
    Then I should see a success message
    Or I should be redirected to a confirmation page

  Scenario: Responsive navigation menu on mobile
    Given I am viewing the page on a mobile device
    When I click the menu icon
    Then I should see the mobile navigation menu
    And all navigation links should be visible
    And navigation links should be stacked vertically

  Scenario: Footer social media links
    When I scroll to the footer
    Then I should see social media icons
    And I should see links for Twitter, Facebook, Snapchat, Pinterest, and GitHub
    And I should see copyright information "Copyright(C) 2020 Mindful-AI"

  Scenario: Smooth scrolling to sections
    When I click on the "Home" navigation link
    Then the page should smoothly scroll to the hero section
    When I click on a link to the contact section
    Then the page should smoothly scroll to the contact section

  Scenario: Hero call-to-action button
    Given I am on the hero section
    When I click the "Regístrate gratis" button
    Then I should be redirected to the registration page
    And the page URL should contain "register.html"

  Scenario: Navigation highlighting for current page
    Given I am on the landing page
    Then the "Home" navigation link should be highlighted
    When I navigate to the "Nosotros" page
    Then the "Nosotros" navigation link should be highlighted
