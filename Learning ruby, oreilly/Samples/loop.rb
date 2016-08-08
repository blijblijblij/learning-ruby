#!/usr/bin/env ruby

loop do
  print "Type something (q|Q to quit): "
  line = gets
  break if line =~ /q|Q/
  puts line
end
