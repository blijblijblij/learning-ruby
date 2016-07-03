#!/usr/bin/env ruby

=begin
Working with strings
=end

title = String.new( "Much Ado about Nothing" )
if title.size > 0
  puts "string is not empty"
  puts "string size: " + title.size.to_s
end
