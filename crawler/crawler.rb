require 'open-uri'
require 'nokogiri'
require 'ap'

source_html = URI.open('https://www.esunbank.com.tw/bank/personal/deposit/rate/forex/foreign-exchange-rates').read

html_doc = Nokogiri::HTML(source_html)
is_first = true
rate = {}
puts  html_doc.css('table.inteTable').text

#html_doc.search('table.inteTable tr').each do |tr|
#	if is_first == false
#		next
#	end
#	tds = tr.search('td')
#	key = tds[0].search('a').inner_html
#	rate[key] = [tds[1].inner_html.to_f , tds[2].inner_html.to_f]
#	puts tr
#end
#ap rate
