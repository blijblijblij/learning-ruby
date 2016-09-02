#!/usr/bin/env ruby

class Gaits
  attr_accessor :walk, :trot, :canter
end

puts "Instance methods of Gaits"
puts Gaits.instance_methods.sort - Object.instance_methods

puts "All methods of Gaits"
puts Gaits.instance_methods.sort
