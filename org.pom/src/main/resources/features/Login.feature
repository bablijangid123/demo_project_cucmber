@authentication
Feature: I would like to log in website

  Background: Navigate to Login page
    Given I open home page
    And I can see automationpractice.com website
    And I click on Sign in button


  @smoke  @regression
  Scenario Outline:As a user I can log into automationpractice.com using registered email "<email>" & password "<password>"
    Given I can see login form
    When I enter login "<email>"
    And I enter password "<password>"
    And I click on Submit button
    Then I can see welcome message

    Examples: SCENARIO OUTLINE DATA
      | email                    | password |
      | Bablijangid@gmail.com | Bebdeep@1222017    |


   @regression
  Scenario Outline:As a user I can't log into automationpractice.com using email "<email>" & password "<password>"
    Given I can see login form
    When I enter login "<email>"
    And I enter password "<password>"
    And I click on Submit button
    Then I can see warning message with include "<warning message>"

    Examples: SCENARIO OUTLINE DATA
      | email                    | password | warning message           |
      | sharmababali@gmail.com | 12345    | Authentication failed     |
      | sharmababali@gmail.com |          | Password is required      |
      |                          | 12345    | An email address required |