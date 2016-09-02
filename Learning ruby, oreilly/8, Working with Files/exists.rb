#!/usr/bin/env ruby
require "digest/md5"

puts 'Chapter 8: Working with Files'
puts 'Check if a file / folder exists'

if File.file?('../Samples/bloeb.txt')
    puts 'File ../Samples/bloeb.txt exists'
else puts 'File ../Samples/bloeb.txt does not exist'
end

if File.file?('../Samples/sonnet_119.txt')
    puts 'File ../Samples/sonnet_119.txt exists'
else puts 'File ../Samples/sonnet_119.txt does not exist'
end

if File.directory?('../Bloeb/')
    puts 'Folder ../Bloeb/ exists'
else puts 'Folder ../Bloeb/ does not exist'
end

if File.directory?('../Samples/')
    puts 'Folder ../Samples/ exists'
else puts 'Folder ../Samples/ does not exist'
end

if File.readable?('../Samples/sonnet_119.txt')
    puts 'File ../Samples/sonnet_119.txt is readable'
else puts 'File ../Samples/sonnet_119.txt is not readable'
end

if File.writable?('../Samples/sonnet_119.txt')
    puts 'File ../Samples/sonnet_119.txt is writeble'
else puts 'File ../Samples/sonnet_119.txt is not writeble'
end

if File.executable?('../Samples/sonnet_119.txt')
    puts 'File ../Samples/sonnet_119.txt is executable'
else puts 'File ../Samples/sonnet_119.txt is not executable'
end

if File.file?('chap.txt')
    puts 'File chap.txt exists'
    puts 'File size: ' + File.size?('chap.txt').to_s
    puts 'File type: ' + File.ftype('chap.txt')
    puts 'File created: ' + File.ctime('chap.txt').to_s
    puts 'File changed: ' + File.mtime('chap.txt').to_s
    puts 'File last accessed: ' + File.atime('chap.txt').to_s
    open('chap.txt', 'a') do |f|
        f << "\n"
        f << Digest::MD5.hexdigest(File.mtime('chap.txt').to_s)
    end
else puts 'File chap.txt does not exist'
     system('touch chap.txt')
end
