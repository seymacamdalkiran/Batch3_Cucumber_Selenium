Feature: Negative Login

  @negativeTest
  Scenario Outline: Login with incorrect credentials
    Given The user is on the login page
    When The user logs in using "<userEmail>" and "<password>"
    Then Verify that "<message>" is visible on the login page
    Examples:
      | userEmail      | password  | message                                  |
      | m@gmail.com    | mike1234  | Email address is incorrect. Please check |
      | wrongEmail     | mike1234  | Email address is incorrect. Please check |
      | mike@gmailcom  | mike1234  | Email address is incorrect. Please check |
      | mikegmail.com  | mike1234  | Email address is incorrect. Please check |
      | mike@gmail     | mike1234  | Email address is incorrect. Please check |
      | mike@gmail.com | mik!      | Password is incorrect. Please check      |
      | mike@gmail.com | 1234mike  | Password is incorrect. Please check      |
      | mike@gmail.com | Mike1234  | Password is incorrect. Please check      |
      | mike@gmail.com | MIKE1234  | Password is incorrect. Please check      |
      | jo@gmail.com   | J1234.    | Email address is incorrect. Please check |
      | john@gmail.com |           | Please enter your password!              |
      | wrongmail      |           | Please enter your password!              |
      |                | John1234. | Please enter your email.                 |
      |                |           | Please enter your email.                 |