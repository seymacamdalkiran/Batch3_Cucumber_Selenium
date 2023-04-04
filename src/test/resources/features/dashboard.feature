Feature: Dashboard checks
  @CucumberList
  Scenario: Example-1 for Cucumber List
    Given The user is on the login page
    When The user logs in using "mytest@gmail.com" and "Test1234."
    Then Validate all tabs are on the page
    |Dashboard |
    |Developers|
    |Components|
    |Forms     |
    |JavaScript|
    |test      |
  @parallel
    @cucumberMap
    Scenario: Example-2 for Cucumber Map
      Given The user is on the login page
      Then Enter credentials and validate that user is on the home page
      |userEmail|mytest@gmail.com|
      |password |Test1234.       |
      |name     |test            |