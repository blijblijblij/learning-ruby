#!/usr/bin/env ruby

def hello
  yield 
end

hello { puts "Hello, Matz!" } # => Hello, Matz!
