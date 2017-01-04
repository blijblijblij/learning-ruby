#!/usr/bin/env ruby

# a script to fix ugly filenames
unless ARGV[0]
  puts "Usage: ruby fixFilename.rb <filename.ext>"
  puts "Example: ruby fixFilename.rb \'How to (make) 20% more on $500.pdf\'"
  exit
end

old_filename = ARGV[0]
unless File.exist?(old_filename)
  puts "#{old_filename} does not exist. Please try again."
  exit
end

name = File.basename(old_filename, ".*")
ext = File.extname(old_filename)

# the replacements
replacements = { /;/ => "-", /\s/ => "_",
                 /\'\`/ => "=",
                 /\&/ => "_and_",
                 /\$/ => "dollar_",
                 /%/ => "_percent",
                 /[\(\)\[\]<>]/ => "" }
replacements.each do |orig, fix|
  name.gsub!(orig, fix)
end
File.rename(old_filename, name + ext)
puts "#{old_filename} ---> #{name + ext}"
