require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


def get_city_hall_email(url)
    page = Nokogiri::HTML(open(url))
    city_name = page.xpath('/html/body/div/main/section[1]/div/div/div/h1')
    city_hall_email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    city_hash = {"#{city_name.text[0..city_name.length-10]}": "#{city_hall_email.text}"}
    return city_hash
end

def get_city_hall_url
    array_of_hashes = []
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    city_name = page.xpath('//p/a')
    city_name.each do |city_name|
        city_url = city_name["href"].gsub(/\A\./, "http://annuaire-des-mairies.com")
        city_hall_email = get_city_hall_email(city_url)
        array_of_hashes.push(city_hall_email)
    end
    puts array_of_hashes    
end

get_city_hall_url
