#!/usr/bin/env ruby

puts "Chapter 8: Working with Files"
puts "Read a file"

file = File.open( "../Samples/sonnet_129.txt" )
file.each { |line| print "#{file.lineno}. ", line }
file.close

ARGV << "../Samples/sonnet_129.txt"
print while gets
p ARGV
