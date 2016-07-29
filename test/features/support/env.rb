require 'huzzah'
require 'watir-webdriver'
require 'pry'
require 'httparty'

Huzzah.configure do |config|
  config.path = "#{Dir.pwd}/lib/huzzah"
  config.default_driver = ENV['BROWSER'] ||= 'firefox'
  config.environment = ENV['AUTO_ENV'] ||= 'test'
end