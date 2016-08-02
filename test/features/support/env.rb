require 'huzzah'
require 'watir-webdriver'
require 'pry'
require 'httparty'
require 'sauce_whisk'

Huzzah.configure do |config|
  config.path = "#{Dir.pwd}/lib/huzzah"
  config.default_driver = ENV['BROWSER'] ||= 'firefox'
  config.environment = ENV['AUTO_ENV'] ||= 'test'
end

Huzzah.define_driver(:sauce_ie) do
  caps = Selenium::WebDriver::Remote::Capabilities.
      internet_explorer(:platform => ENV['SELENIUM_PLATFORM'],
                        :version => ENV['SELENIUM_VERSION'],
                        :name => 'TestScraperApp',
                       # :tunnelIdentifier => 'testscraper',
                        :idleTimeout => '600')
  driver = Selenium::WebDriver.for(
      :remote,
      :url => sauce_grid_url,
      :desired_capabilities => caps)
  Watir::Browser.new(driver)
end

Huzzah.define_driver(:sauce_safari) do
  caps = Selenium::WebDriver::Remote::Capabilities.
      safari(:platform => ENV['SELENIUM_PLATFORM'],
             :version => ENV['SELENIUM_VERSION'],
             :name => 'TestScraperApp',
             #:tunnelIdentifier => 'testscraper',
             :idleTimeout => '600')
  driver = Selenium::WebDriver.for(
      :remote,
      :url => sauce_grid_url,
      :desired_capabilities => caps)
  Watir::Browser.new(driver)
#   375x667 iPhone 6
end


Huzzah.define_driver(:sauce_firefox) do

  client = Selenium::WebDriver::Remote::Http::Default.new
  caps = Selenium::WebDriver::Remote::Capabilities.
      firefox(:platform => ENV['SELENIUM_PLATFORM'],
              :version => ENV['SELENIUM_VERSION'],
              :name => 'TestScraperApp',
             # :tunnelIdentifier => 'testscraper',
              :idleTimeout => '600')
  profile = Selenium::WebDriver::Firefox::Profile.new
  driver = Selenium::WebDriver.for(
      :remote,
      :url => sauce_grid_url,
      :desired_capabilities => caps)
  Watir::Browser.new(driver)
#   375x667 iPhone 6
end


Huzzah.define_driver(:sauce_chrome) do
  caps = Selenium::WebDriver::Remote::Capabilities.
      chrome(:platform => ENV['SELENIUM_PLATFORM'],
              :version => ENV['SELENIUM_VERSION'],
              :name => 'TestScraperApp',
             # :tunnelIdentifier => 'testscraper',
              :idleTimeout => '600')
  driver = Selenium::WebDriver.for(
      :remote,
      :url => sauce_grid_url,
      :desired_capabilities => caps)
  Watir::Browser.new(driver)
#   375x667 iPhone 6
end

def sauce_grid_url
  'http://fingerman:9778325c-a1b8-408f-9daa-6b9211c5adfb@ondemand.saucelabs.com/wd/hub'
end