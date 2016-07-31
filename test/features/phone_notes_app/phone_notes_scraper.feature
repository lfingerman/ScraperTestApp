Feature: Complete Results from Phone Notes Scraper API
  As a Phone Notes Scraper API consumer
  In order to use multiple phone numbers for marketing compaigns
  I want to be able to fetch a complete list of phone numbers with attributes

  Scenario: Scraper API provides complaint phone numbers
    When I open the scraping site
    Then I see phone number formatted in the scraping site

  Scenario: Scraper API provides complaint comments
    When I open the scraping site
    Then I see area code formatted in the scraping site

