#!/usr/bin/env ruby

require 'date'

puts "Date functions"

date = Date.new( 2006, 11, 8 )
puts date.to_s

today = Date.today
puts today.to_s

puts "The date was #{date.month}/#{date.day}/#{date.year}."
puts "The date is #{today.month}/#{today.day}/#{today.year}."
puts "The next date was #{date.next.to_s} and is #{today.next.to_s}"

date.upto( date + 5 ) { |date| puts date }
