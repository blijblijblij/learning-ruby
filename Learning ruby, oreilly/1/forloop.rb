#!/usr/bin/env ruby

=begin
Looping
=end

description = "normal for loop"
puts description
for i in 1..5 do
  print i, " \n"
end

puts "\n"
description = "nested for-loop"
puts description
for i in 1..4
  for j in 1..5
    print i.to_s + " x " + j.to_s + " = ", j * i, "\n"
  end
end

puts "\n"
description = "the times loop"
puts description
10.times { |i | print i, " " }

puts "\n"

description = "upto loop"
puts description
1.upto(12) { |i| print "6 x " + i.to_s + " = ", i * 6, "\n"}
