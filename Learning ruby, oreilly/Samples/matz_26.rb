#!/usr/bin/env ruby

prc = lambda { |name| puts "Hello, " + name }

prc. call "Matz!"
