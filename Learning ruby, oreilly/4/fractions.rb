#!/usr/bin/env ruby

require 'rational'
require 'mathn'

puts rat = Rational(25 / 100) # => 1/4 -- lowest terms
puts rat + Rational(1 / 4) # =>  1/2 -- add
puts rat + 1 / 4 # => 1/2
puts rat - Rational(1 / 8) # => 1/8 -- subtract
puts rat - 1 / 8 # => 1/8
puts rat * 3 # => 3/4 -- multiply
puts rat / 2 # => 1/8 -- divide
puts rat % Rational(1 / 2) # => 1/4 -- modulo or remainder
puts rat**2 # => 1/16 -- exponent or power
puts rat == 1 / 8 # => false -- equality
puts rat == 1 / 4 # => true
puts rat <=> 1 / 4 # => 0
puts rat <=> 1 / 8 # => 1
puts rat <=> 1 / 2 # => -1
puts rat.inspect # => "1/4"
puts rat.to_s # => "1/4"
puts rat.to_f # => 0.25
p rat # => 1/4
