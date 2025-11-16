Feature: User Registration
  As a new user
  I want to register for a Mindful-AI account
  So that I can access personalized AI recommendations

  Background:
    Given I am on the Mindful-AI landing page
    And I am not logged in

  Scenario: Successful user registration with valid data
    Given I navigate to the registration page
    When I enter a valid email "user@example.com"
    And I enter a valid password "SecurePass123!"
    And I enter my name "John Doe"
    And I accept the terms and conditions
    And I click the "Register" button
    Then I should see a success message "Registration successful! Please check your email."
    And I should receive a verification email at "user@example.com"
    And I should be redirected to the email verification page

  Scenario: Registration fails with invalid email format
    Given I navigate to the registration page
    When I enter an invalid email "notanemail"
    And I enter a valid password "SecurePass123!"
    And I click the "Register" button
    Then I should see an error message "Please enter a valid email address"
    And I should remain on the registration page

  Scenario: Registration fails with weak password
    Given I navigate to the registration page
    When I enter a valid email "user@example.com"
    And I enter a weak password "123"
    And I click the "Register" button
    Then I should see an error message "Password must be at least 8 characters"
    And I should remain on the registration page

  Scenario: Registration fails with existing email
    Given a user already exists with email "existing@example.com"
    And I navigate to the registration page
    When I enter the email "existing@example.com"
    And I enter a valid password "SecurePass123!"
    And I click the "Register" button
    Then I should see an error message "This email is already registered"
    And I should see a link to the login page

  Scenario: Registration form validation
    Given I navigate to the registration page
    When I leave the email field empty
    And I leave the password field empty
    And I click the "Register" button
    Then I should see an error message "Email is required"
    And I should see an error message "Password is required"
    And the form should not be submitted

  Scenario: Password strength indicator
    Given I navigate to the registration page
    When I focus on the password field
    And I enter "weak" as password
    Then I should see password strength indicator showing "Weak"
    When I enter "StrongerPass123!" as password
    Then I should see password strength indicator showing "Strong"

  Scenario: Terms and conditions requirement
    Given I navigate to the registration page
    When I enter a valid email "user@example.com"
    And I enter a valid password "SecurePass123!"
    And I do not accept the terms and conditions
    And I click the "Register" button
    Then I should see an error message "You must accept the terms and conditions"
    And the form should not be submitted
