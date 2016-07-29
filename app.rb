require 'sinatra'
require_relative 'app_config.rb'

URL = 'http://800notes.com/'

get '/interview/api/v1.0/results/' do
  content_type :json
  all_entries = LeonardTestDemo::PageScraper.new(URL).all_entries.to_json
  body all_entries
end
