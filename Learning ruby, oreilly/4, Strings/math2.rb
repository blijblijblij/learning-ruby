#!/usr/bin/env ruby

puts "-40.abs => " + (-40.abs).to_s
puts "40.abs => " + (40.abs).to_s

puts "ceil 4.65 => " + (4.65.ceil).to_s
puts "4.65.floor => " + (4.65.floor).to_s

puts "100.45.round => " + (100.45.round).to_s
puts "100.49.round => " + (100.49.round).to_s
puts "100.5.round => " + (100.5.round).to_s
puts "100.6.round => " + (100.6.round).to_s

puts "-24.next => " + (-24.next).to_s
puts "1.next => " + (1.next).to_s
puts "999.next => " + (999.next).to_s

puts "Math.constants => " + (Math.constants).to_s
puts "Math::E => " + (Math::E).to_s
puts "Math::PI => " + (Math::PI).to_s
puts "Math.exp(1) => " + ( Math.exp(1)).to_s
puts "Math.exp(11) => " + ( Math.exp(11)).to_s
puts "Math.sqrt(4) => " + (Math.sqrt(4)).to_s
puts "Math.sqrt(16) => " + (Math.sqrt(16)).to_s
puts "Math.sqrt(144) => " + (Math.sqrt(144)).to_s
puts "Math.log(Math::E) => " + (Math.log(Math::E)).to_s
puts "Math.log(1) => " + (Math.log(1)).to_s
puts "Math.log(0) => " + (Math.log(0)).to_s
puts "Math.log10(100.0) => " + (Math.log10(100.0)).to_s
