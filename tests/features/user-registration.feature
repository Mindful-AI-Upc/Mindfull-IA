Feature: User Registration
  As a new user
  I want to register for a Mindful-AI account
  So that I can access personalized mental health support

  Background:
    Given I am on the registration page
    And the registration form is displayed

  Scenario: Successful user registration
    When I enter a valid email address
    And I enter a strong password
    And I confirm my password correctly
    And I accept the terms and conditions
    And I click the "Register" button
    Then my account should be created successfully
    And I should receive a confirmation message
    And I should be redirected to the dashboard or welcome page

  Scenario: Registration with existing email
    Given a user account already exists with email "existing@example.com"
    When I enter "existing@example.com" as my email
    And I fill in the remaining required fields
    And I click the "Register" button
    Then I should see an error message "Email already registered"
    And I should remain on the registration page

  Scenario: Registration with invalid email format
    When I enter an invalid email "notanemail"
    And I fill in the remaining required fields
    And I click the "Register" button
    Then I should see a validation error "Please enter a valid email address"
    And the form should not be submitted

  Scenario: Registration with weak password
    When I enter a weak password "123"
    And I confirm the weak password
    And I fill in the remaining required fields
    And I click the "Register" button
    Then I should see an error "Password must be at least 8 characters"
    And the form should not be submitted

  Scenario: Registration with mismatched passwords
    When I enter a valid password
    And I enter a different password in the confirmation field
    And I click the "Register" button
    Then I should see an error "Passwords do not match"
    And the form should not be submitted

  Scenario: Registration without accepting terms
    When I fill in all required fields correctly
    But I do not check the terms and conditions checkbox
    And I click the "Register" button
    Then I should see an error "Please accept the terms and conditions"
    And the form should not be submitted

  Scenario: Navigate to login from registration
    When I click the "Already have an account?" link
    Then I should be redirected to the login page

  Scenario Outline: Password strength validation
    When I enter "<password>" as my password
    Then the password strength indicator should show "<strength>"

    Examples:
      | password          | strength  |
      | 123               | Weak      |
      | password123       | Medium    |
      | Pass@word123!     | Strong    |
      | MyS3cur3P@ssw0rd! | Very Strong |

  Scenario: Form field validation on blur
    When I click on the email field
    And I leave the field without entering anything
    Then I should see a validation message "Email is required"
    
  Scenario: Clear form functionality
    Given I have filled in some registration fields
    When I click the "Clear" or "Reset" button
    Then all form fields should be cleared
    And the form should return to its initial state
