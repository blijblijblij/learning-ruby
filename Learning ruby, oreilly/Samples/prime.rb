#!/usr/bin/env ruby

require 'mathn'

prime_number = Prime.new # instantiate a Prime object
prime_number.next # => 2 # return the next prime number (seed = 1)
prime_number.succ # => succ works, too

# print the next prime number as a string
puts "The next prime number is " + prime_number.next.to_s + "."
# => The next prime number is 5. 
