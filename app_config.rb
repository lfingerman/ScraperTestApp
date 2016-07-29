require 'sinatra'
require 'require_all'
require_all 'lib'
require 'hpricot'
require 'pry'
require 'open-uri'

require 'json'

#TODO: refactor into one place
$PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__)))