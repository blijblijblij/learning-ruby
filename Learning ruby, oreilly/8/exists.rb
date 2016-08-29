#!/usr/bin/env ruby

puts 'Chapter 8: Working with Files'
puts 'Check if a file / folder exists'

if File.file?('../Samples/bloeb.txt')
    puts 'File exists'
else puts 'File does not exist'
end

if File.file?('../Samples/sonnet_119.txt')
    puts 'File exists'
else puts 'File does not exist'
end

if File::directory?('../Bloeb/')
    puts 'Folder exists'
else puts 'Folder does not exist'
end

if File::directory?('../Samples/')
    puts 'Folder exists'
else puts 'Folder does not exist'
end
