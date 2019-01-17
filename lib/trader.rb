require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def scrapping

    page = Nokogiri::HTML(open("https://coinmarketcap.com/fr/all/views/all/"))

    values = []
    crypto_value = page.xpath('//*[@class = "price"]').each {|value| values.push(value.text.delete("$").to_f)}

    names = []
    crypto_name = page.xpath('//*[@class = "text-left col-symbol"]').each {|name| names.push(name.text)}

    crypto_array_hash = names.zip(values).map{ |name, value| Hash[name, value]}

    puts crypto_array_hash

end

scrapping
