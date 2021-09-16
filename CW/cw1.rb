
require 'open-uri'
require 'nokogiri'

url = "https://anekdot.ru"
html = URI.open(url)
doc = Nokogiri::HTML(html)
puts doc.css(".text")[0].text