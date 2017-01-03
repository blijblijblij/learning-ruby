#!/usr/bin/env ruby

require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'

# location of rss feed
source = "https://www.nostarch.com/blog/feed?feed=rss2"
content = ""
open(source) { |info| content = info.read }

rss = RSS::Parser.parse(content, false)
print "Do you want to see feed descriptions (y/n)? "
input = gets.chomp
desc = input == 'y' || input == 'Y'

puts "\n\nTITLE: #{rss.channel.title}"
puts "DESCRIPTION: #{rss.channel.description}"
puts "LINK: #{rss.channel.link}"

puts "PUBLICATION DATE: #{rss.channel.date} \n\n"

rss.items.size.times do |i|
  puts "#{rss.items[i].date} ... #{rss.items[i].title}"
  print "#{rss.items[i].description}\n\n\n" if desc
end
