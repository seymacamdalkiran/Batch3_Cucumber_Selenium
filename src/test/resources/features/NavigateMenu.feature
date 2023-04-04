#Create new feature file navigationMenu.feature and write
#scenarios for given requirements and test case.
#Try to reuse steps from previous feature file.
#After finishing the scenarios , add necessary tags, run
#though Cukes Runner and generate step defs.
#Scenario 1:
#Login as Mike Teacher
#At first get the text of dashboard
#Then go to Developers menu and get the text of Developer
#Scenario 2:
#Login as Sebastian developer
#Get the text of dashboard
#Then go to Forms input menu and get the text of General Form Elements - Input
#Scenario 3:
#Login as Jhon Nash SDET
#Get the text of dashboard
#Then go to My Profile menu and get the text of User Profile
  Feature: Navigate
    Scenario: Navigation to Developers menu
      Given The user is on the login page
      When The user enters valid credentials that belongs to Mike
      Then The user should be able to see Dashboard text
      And The user navigates to Developer menu
      Then The user able to see Developers text

@rerun
    Scenario: Navigation to Forms Input menu
      Given The user is on the login page
      When The user enters valid credentials that belongs to Mike
      Then The user should be able to see Dashboard text
      And The user navigates to Forms Input menu
      Then The user able to see General Form Elements - Input text

    @wip
    Scenario: Navigation to My Profile menu
      Given The user is on the login page
      When The user enters valid credentials that belongs to Mike
      Then The user should be able to see Dashboard text
      And The user navigates to My Profile menu
      Then The user able to see User Profile text
