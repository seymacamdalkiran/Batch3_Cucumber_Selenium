@scenario
Feature: Profile Tests
  @parallel
  @rerun
  Scenario: User should be able to edit his/her profile
    Given The user is on the login page
    When The user logs in using "john@gmail.com" and "John1234."
    And  The user should be able to login
    And User should go to my profile with "John"
    And User should navigate to "Edit Profile"
    #And User should fill out necessary input boxes and tap on save changes button
    #Then User should verify the profile updated message
@odev @rerun
  Scenario: User should be able to her profile
    Given The user is on the login page
    When The user logs in using "mytest@gmail.com" and "Test1234."
    And The user should be able to login
    And User should go to my profile with "test"
    And User should navigate to "Edit Profile"
    And User should fill out necessary input boxes and tap on save changes button
    Then User should verify the profile updated message