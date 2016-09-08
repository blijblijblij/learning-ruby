#!/usr/bin/env ruby

start = Time.now

puts 'The day of the week is ' + start.wday.to_s
puts 'The day of the month is ' + start.day.to_s
puts 'The day of the year is ' + start.yday.to_s
bloeb = start.wday * start.day * start.yday
puts 'Mutiplied with eachother, that makes ' + bloeb.to_s
puts 'The year is ' + start.year.to_s
puts 'The hour ' + start.hour.to_s
puts 'The timezone ' + start.zone.to_s
puts 'The minute is ' + start.min.to_s
puts 'The second is ' + start.sec.to_s

stop = Time.now

stop + (60 * 60 * 3)

puts 'Stop - start is: ' + (stop - start).to_s
