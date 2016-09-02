#!/usr/bin/env ruby

puts 'Chapter 8: Working with Files'
puts 'Read a url'

require 'open-uri'
url = 'http://www.google.com/search?q=ruby'
open(url) do |page|
    page_content = page.read
    links = page_content.scan(/<a class=gb.*?href=\"(.*?)\"/).flatten
    links.each { |link| puts link }
end
