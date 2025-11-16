Feature: User Login
  As a registered user
  I want to log in to my Mindful-AI account
  So that I can access my personalized dashboard and features

  Background:
    Given I am on the Mindful-AI landing page
    And I am not logged in
    And a user exists with email "user@example.com" and password "SecurePass123!"

  Scenario: Successful login with valid credentials
    Given I navigate to the login page
    When I enter the email "user@example.com"
    And I enter the password "SecurePass123!"
    And I click the "Login" button
    Then I should be successfully logged in
    And I should be redirected to the dashboard
    And I should see a welcome message "Welcome back, John!"

  Scenario: Login fails with incorrect password
    Given I navigate to the login page
    When I enter the email "user@example.com"
    And I enter an incorrect password "WrongPassword"
    And I click the "Login" button
    Then I should see an error message "Invalid email or password"
    And I should remain on the login page
    And the password field should be cleared

  Scenario: Login fails with non-existent email
    Given I navigate to the login page
    When I enter the email "nonexistent@example.com"
    And I enter the password "SecurePass123!"
    And I click the "Login" button
    Then I should see an error message "Invalid email or password"
    And I should remain on the login page

  Scenario: Login form validation
    Given I navigate to the login page
    When I leave the email field empty
    And I leave the password field empty
    And I click the "Login" button
    Then I should see an error message "Email is required"
    And I should see an error message "Password is required"
    And the form should not be submitted

  Scenario: Remember me functionality
    Given I navigate to the login page
    When I enter valid credentials
    And I check the "Remember me" checkbox
    And I click the "Login" button
    Then I should be successfully logged in
    When I close and reopen the browser
    Then I should still be logged in

  Scenario: Forgot password link
    Given I navigate to the login page
    When I click the "Forgot password?" link
    Then I should be redirected to the password reset page

  Scenario: Account lockout after failed attempts
    Given I navigate to the login page
    When I enter the email "user@example.com"
    And I enter incorrect password 5 times
    Then I should see an error message "Account locked due to multiple failed login attempts"
    And I should see instructions to reset my password
    And the login form should be disabled

  Scenario: Redirect to intended page after login
    Given I am trying to access "/dashboard/profile" without being logged in
    And I am redirected to the login page
    When I log in with valid credentials
    Then I should be redirected to "/dashboard/profile"
