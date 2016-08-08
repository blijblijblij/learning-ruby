#!/usr/bin/env ruby

require 'mathn'

list_primes = Prime.new

list_primes.each { |prime| print prime, " "; break unless prime < 90 }
