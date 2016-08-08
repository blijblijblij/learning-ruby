#!/usr/bin/env ruby

def hello
  puts "Hello, Matz!"
end

hello # => Hello, Matz!

undef hello # undefines the method named hello

hello # try calling this method
