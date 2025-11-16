Feature: Blog Functionality
  As a user interested in mental health
  I want to read blog posts about mental wellness
  So that I can learn and stay informed

  Background:
    Given I am on the Mindful-AI website
    And blog posts are available

  Scenario: Access blog page
    Given I am on the landing page
    When I click on the "Blog" navigation link
    Then I should be redirected to the blog page
    And I should see a list of blog posts

  Scenario: View blog post list
    Given I am on the blog page
    Then I should see multiple blog posts displayed
    And each post should show a title
    And each post should show a preview or excerpt
    And each post should show the publication date
    And each post should show the author (if applicable)

  Scenario: Read full blog post
    Given I am on the blog page
    When I click on a blog post title
    Then I should be able to read the full article
    And the article should be formatted properly
    And images in the article should load correctly

  Scenario: Blog post pagination
    Given there are more than 10 blog posts
    And I am on the blog page
    Then I should see a maximum of 10 posts per page
    And I should see pagination controls
    When I click "Next" or page "2"
    Then I should see the next set of blog posts

  Scenario: Search blog posts
    Given I am on the blog page
    When I enter "mindfulness" in the search box
    And I click the search button
    Then I should see blog posts related to mindfulness
    And posts not matching should be filtered out

  Scenario: Filter blog posts by category
    Given blog posts have categories
    And I am on the blog page
    When I select the "Técnicas de Relajación" category
    Then only posts in that category should be displayed

  Scenario: Share blog post on social media
    Given I am reading a blog post
    When I click the social media share button
    Then I should see sharing options for different platforms
    And clicking a platform should open the share dialog

  Scenario: Blog post responsive design
    Given I am reading a blog post
    When I view it on a mobile device
    Then the post should be readable without horizontal scrolling
    And images should be responsive
    And text should be appropriately sized

  Scenario: Return to blog list from post
    Given I am reading a full blog post
    When I click the "Back to Blog" or back button
    Then I should return to the blog list
    And I should see the same position I was at before

  Scenario: Blog post meta information
    Given I am viewing a blog post
    Then I should see the publication date
    And I should see the estimated reading time
    And I should see relevant tags or categories
