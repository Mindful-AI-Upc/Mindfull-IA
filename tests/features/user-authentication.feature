Feature: User Authentication
  As a registered user
  I want to log in to my account
  So that I can access my personalized mental health dashboard

  Background:
    Given I am on the login page
    And the login form is displayed

  Scenario: Successful login with valid credentials
    Given a user exists with email "user@example.com" and password "SecurePass123!"
    When I enter "user@example.com" in the email field
    And I enter "SecurePass123!" in the password field
    And I click the "Log In" button
    Then I should be logged in successfully
    And I should be redirected to my dashboard
    And I should see my user profile information

  Scenario: Failed login with incorrect password
    Given a user exists with email "user@example.com"
    When I enter "user@example.com" in the email field
    And I enter an incorrect password
    And I click the "Log In" button
    Then I should see an error message "Invalid email or password"
    And I should remain on the login page
    And the password field should be cleared

  Scenario: Failed login with non-existent email
    When I enter "nonexistent@example.com" in the email field
    And I enter any password
    And I click the "Log In" button
    Then I should see an error message "Invalid email or password"
    And I should remain on the login page

  Scenario: Login with empty credentials
    When I leave both email and password fields empty
    And I click the "Log In" button
    Then I should see validation errors for required fields
    And the form should not be submitted

  Scenario: Login with only email filled
    When I enter a valid email address
    And I leave the password field empty
    And I click the "Log In" button
    Then I should see an error "Password is required"
    And the form should not be submitted

  Scenario: Navigate to registration from login
    When I click the "Don't have an account? Sign up" link
    Then I should be redirected to the registration page

  Scenario: Remember me functionality
    Given I have valid credentials
    When I check the "Remember me" checkbox
    And I enter my credentials and log in successfully
    And I close the browser
    And I reopen the browser and visit the site
    Then I should still be logged in
    And I should not need to enter credentials again

  Scenario: Forgot password link
    When I click on the "Forgot password?" link
    Then I should be redirected to the password reset page

  Scenario: Multiple failed login attempts
    Given I have attempted to log in 4 times with wrong credentials
    When I attempt to log in again with wrong credentials
    Then I should see a message "Too many failed attempts. Please try again later"
    And my account should be temporarily locked for 15 minutes

  Scenario: Case-insensitive email login
    Given a user exists with email "User@Example.com"
    When I enter "user@example.com" in lowercase
    And I enter the correct password
    And I click the "Log In" button
    Then I should be logged in successfully

  Scenario: SQL injection attempt
    When I enter "admin@example.com' OR '1'='1" in the email field
    And I enter any password
    And I click the "Log In" button
    Then I should see an error message
    And no SQL injection should occur
    And I should not be logged in

  Scenario: Session timeout
    Given I am logged in
    And I have been inactive for 30 minutes
    When I try to access a protected page
    Then I should be redirected to the login page
    And I should see a message "Your session has expired. Please log in again"
