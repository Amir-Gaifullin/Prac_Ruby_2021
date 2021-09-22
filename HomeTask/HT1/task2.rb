
require 'open-uri'
require 'nokogiri'

url = "https://ria.ru/lenta/"
html = URI.open(url)
doc = Nokogiri::HTML(html)

for i in 1..10
	dates = doc.css('.list-item__content')[i].text
	puts "News number #{i}"
	puts dates
end







# final = dates.at_css('.list-item__title color-font-hover-only').inner_html.strip
# puts dates
# puts "============================================================"
# puts final