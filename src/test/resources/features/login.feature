@login
Feature: Login
  # As a user I should be able to login with my valid credentials so that
  # I can reach out to the app tu use
  # Acceptiance Criteria :
  #       1. User should be able to login with valid credentials.
  #       2. User should not be able to login with valid credentials.
  #       3. ...
  #       4. ...

  @parallel
  Scenario: Login as Mike
    Given The user is on the login page
    When The user enters valid credentials that belongs to Mike
    Then The user should be able to login

    @db
  Scenario: Login as John
    Given The user is on the login page
    When The user enters valid credentials that belongs to John
    Then The user should be able to login

  Scenario: Login as Test
    Given The user is on the login page
    When The user enters valid credentials that belongs to Test
    Then The user should be able to login

  Scenario: Login as Morgan
    Given The user is on the login page
    When The user enters valid credentials that belongs to Morgan
    Then The user should be able to login