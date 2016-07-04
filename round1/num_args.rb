#!/usr/bin/env ruby

# one or more method arguments

def num_args (*args)
  length = args.size
  label = length == 1 ? " argument " : " arguments "
  num = length.to_s + label + "("  + args.inspect + ")"
  num
end

puts num_args
puts num_args(1)
puts num_args(100, 2.5, "three " * 3)
puts num_args(10012, 21235, "twelve " * 23)
