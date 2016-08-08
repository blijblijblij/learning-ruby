#!/usr/bin/env ruby

file = File.open( "sonnet_129.txt" )

file.each { |line| print "#{file.lineno}. ", line }

file.close
