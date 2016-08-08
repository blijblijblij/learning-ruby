#!/usr/bin/env ruby

require 'rational'
require 'mathn'

rat = Rational(25/100) # => 1/4 -- lowest terms

rat + Rational(1/4) # =>  1/2 -- add
rat + 1/4 # => 1/2

rat - Rational(1/8) # => 1/8 -- subtract
rat - 1/8 # => 1/8

rat * 3 # => 3/4 -- multiply
rat / 2 # => 1/8 -- divide

rat % Rational(1/2) # => 1/4 -- modulo or remainder

rat**2 # => 1/16 -- exponent or power

rat == 1/8 # => false -- equality
rat == 1/4 # => true
rat <=> 1/4 # => 0
rat <=> 1/8 # => 1
rat <=> 1/2 # => -1

rat.inspect # => "1/4"
