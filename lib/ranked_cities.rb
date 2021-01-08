
require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative "ranked_cities/version.rb"
require_relative "ranked_cities/cli.rb"
require_relative "ranked_cities/scraper.rb"
require_relative "ranked_cities/cities.rb"

module RankedCities
  class Error < StandardError; end
  # Your code goes here...
end
