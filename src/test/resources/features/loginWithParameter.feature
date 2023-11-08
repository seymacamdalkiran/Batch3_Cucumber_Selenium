@LoginWithParameter
Feature: Log in as different user

  Background:
    Given The user is on the login page
  @rerun
  Scenario: Log in as mike with parameter
    When The user logs in using "mike@gmail.com" and "mike1234"
    Then The user should be able to login
    And The user name should be "mike"
@parallel
  Scenario: Log in as john with parameter
    When The user logs in using "john@gmail.com" and "John1234."
    Then The user should be able to login
    And The user name should be "John"

  Scenario: Log in as test with parameter
    When The user logs in using "mytest@gmail.com" and "Test1234."
    Then The user should be able to login
    And The user name should be "test"
  @rerun
  Scenario: Log in as morgan with parameter
    When The user logs in using "morganfreeman@kraft.com" and "mfreeman"
    Then The user should be able to login
    And The user name should be "Morgan Freeman"