require 'nokogiri'
html=open('/home/paul/android-cts10r5/android-cts/results/2020.09.04_12.18.3
0/test_result.html').read
doc = Nokogiri::HTML(html)
1.puts doc.css('table.summary').text
2.doc.at('tr:contains("CipherLab/RS35_WW/RS35:10/QKQ1.200709.002/2020
09040334:user/release-keys")').text.strip
