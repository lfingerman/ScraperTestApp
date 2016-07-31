Feature: Complete Results from Phone Notes Scraper API
  As a Phone Notes Scraper API consumer
  In order to use multiple phone numbers for marketing compaigns
  I want to be able to fetch a complete list of phone numbers with attributes

  Scenario: Scraper API provides complaint phone numbers
    When I open the scraping site
    Then I see phone number formatted in the scraping site
#
#  Scenario: Scraper API provides complaint comments
#    Given I requested to fetch all results from Scraper API
#    When I open the scraping site
#    Then I see values of the "comments" in API response corresponding to the scraping site
#
#  Scenario: Scraper API provides complaint comments
#    Given I requested to fetch all results from Scraper API
#    When I open the scraping site
#    Then I see values of the "number_of_comments" in API response corresponding to the scraping site

