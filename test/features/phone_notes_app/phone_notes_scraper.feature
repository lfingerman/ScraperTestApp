Feature: Complete Results from Phone Notes
  As a Phone Notes application user
  In order to use multiple phone numbers for marketing compaigns
  I want to be able to fetch a complete list of phone numbers with attributes

  Background:
    Given I open the scraping site

  Scenario: Phone Notes application provides complaint phone numbers
    Then I see phone number formatted in the scraping site

  Scenario: Phone Notes application provides complaint comments
    Then I see area code formatted in the scraping site

  Scenario: Phone Notes application provides complaint comments
    Then I see comments in the scraping site

