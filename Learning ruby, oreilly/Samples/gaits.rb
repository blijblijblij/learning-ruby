#!/usr/bin/env ruby

class Gaits
  attr_accessor :walk, :trot, :canter
end

p Gaits.instance_methods.sort - Object.instance_methods # => ["canter", "canter=", "trot", "trot=", "walk", "walk="]
