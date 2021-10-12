require 'httparty'
require 'nokogiri'
require 'byebug'

def scraper
  url = URI.parse("https://news.google.com/topstories?hl=pt-BR&gl=BR&ceid=BR:pt-419") #Target URL

  unparsed_page = HTTParty.get(url) #Get a clean URL
  parsed_page = Nokogiri::HTML(unparsed_page)#Nokogiri converts the url to a formact that i can extract the data from it
  byebug   #Debug to interact with some variables inside of the data
end

scraper