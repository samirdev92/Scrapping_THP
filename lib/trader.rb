require 'nokogiri'
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open("ton_url_a_scrapper.com"))
