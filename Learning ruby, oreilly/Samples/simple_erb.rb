#!/usr/bin/env ruby

require 'erb'

person = "Matz!"

temp = ERB.new( "Hello, <%= person %>" )

puts temp.result( binding ) # => Hello, Matz!
