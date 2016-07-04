#!/usr/bin/env ruby

# multiple method arguments, but only handle *args

def two_plus( one, two, *args )
  length = args.size
  label = length == 1 ? " variable argument" : " variable arguments"
  num = length.to_s + label + " (" + args.inspect + ")"
  num
end

# nothing in  *args
puts two_plus( 1, 2 )
# only 14.3
puts two_plus( 1000, 3.5, 14.3 )
# "three", 70, 14.3
puts two_plus( 100, 2.5, "three", 70, 14.3 )
