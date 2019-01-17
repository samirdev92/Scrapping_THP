require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def get_representative_contact
    array_of_hashes = []
    temp_hash = {}
    page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
    representative = page.xpath('//*[@id="deputes-list"]/div/ul/li/a')
    representative.each do |representative|
        temp_hash[:Prénom] = representative.text.split[1]
        temp_hash[:Nom] = representative.text.split[2]
        temp_hash[:Email] = "#{temp_hash[:Prénom]}.#{temp_hash[:Nom]}@assemblee-nationale.fr"
        array_of_hashes << temp_hash
        temp_hash = {}
    end
    puts array_of_hashes
end

get_representative_contact


