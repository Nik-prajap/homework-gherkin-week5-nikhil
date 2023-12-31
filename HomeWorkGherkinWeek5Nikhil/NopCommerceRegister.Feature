Feature: Nopcommerce Registration

  As a user
  I want to check the Register funtionality of Nopcommerce

  Background: I am on Nopcommerce Registeration page
    Given   I open the Google Chrome Browser
    When    I open the Url https://demo.nopcommerce.com/register
    Then    I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory fiels (*) of registration page
    When    I enter First name "<First Name>"
    And     I enter last name "<Last Name>"
    And     I enter Email address "<Email>"
    And     I enter Password "<Password>"
    And     I enter Confirm Password "<Confirm Password>"
    And     CLick on Register button
    Then    I can see an error message "<Error Message>"
    And     I am not able to register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password | Error Message                              |
      | "  "       | bakshi    | bakshi@gmail.com | 123456   | 123456           | please enter First Name                    |
      | Rohan      | "     "   | bakshi@gmail.com | 123456   | 123456           | please enter Last Name                     |
      | Rohan      | bakshi    | "           "    | 123456   | 123456           | please enter valid Email                   |
      | Rohan      | bakshi    | bakshi@gmail.com | "  "     | 123456           | Password is required                       |
      | Rohan      | bakshi    | bakshi@gmail.com | 123456   | "   "            | Confirn Password is required               |
      | Rohan      | bakshi    | bakshi@gmail.com | 123456   | 456123           | Password and Confirm Password do not Match |
      | Rohan      | bakshi    | bakshi@gmail.com | 12345    | 12345            | Minimum 6 Character Password is Required   |
      | "   "      | "    "    | "    "           | "  "     | "  "             | Mandatory (*) field is required            |

  Scenario: I should be able to select any one radio button from Gender lable of your Personal Details section
    Given   I am on Gender label of your personal detail section
    When    I select "Male" radio button
    And     I select "Female" radio button
    Then    I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from the drop down lisy of Date of Birth field
    Given   I am on Date of Birth field of your Personal Detail section
    When    I select date "<Day>"
    And     I select month "<Month>"
    And     I select year "<Year>"
    Then    I am able to select Day, Month and Year from the Drop-down list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1999 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options section
    Given   I am on Newsletter label on Options section
    And     I click on Newsletter Checkbox
    And     I again click on Newsletter Checkbox
    Then    I was able to check and uncheck the box next to Newsletter Label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When    I enter First Name "Rohan"
    And     I enter Last Name "bakshi"
    And     I enter Email "bakshi@gmail.com"
    And     I enter Password "123456"
    And     I enter Confirm Password "123456"
    And     I click on Register button
    Then    I was able to register successfully































