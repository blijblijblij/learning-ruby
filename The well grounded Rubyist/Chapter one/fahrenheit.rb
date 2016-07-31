#!/usr/bin/env ruby

puts "Reading Celsius temperature from data file ..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "The number = " + num.to_s
print "Result: "
puts fahrenheit
