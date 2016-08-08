#!/usr/bin/env ruby

class Singleton
end

s = Singleton.new
def s.handle
  puts "I'm a singleton method!"
end

p s.handle # => "I'm a singleton method!"
