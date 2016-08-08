#!/usr/bin/env ruby

lang = :es

if lang == :en
  print "dog"
elsif lang == :es
  print "perro"
elsif lang == :fr
  print "chien"
elsif lang == :de
  print "Hund"
else
  puts "No language set; default = 'dog'."
end
