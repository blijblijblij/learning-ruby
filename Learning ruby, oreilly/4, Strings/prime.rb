#!/usr/bin/env ruby

require 'mathn'

puts prime_number = Prime.instance.prime # instantiate a Prime object
puts prime_number.next # => 2 # return the next prime number (seed = 1)
puts prime_number.succ # => 3 # succ works, too

# print the next prime number as a string
puts 'The next prime number is ' + prime_number.next.to_s + '.'
# => The next prime number is 5.
