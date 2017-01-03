#!/usr/bin/env ruby

require 'find'
require 'digest/md5'

unless ARGV[0] && File.directory?(ARGV[0])
  puts "\n\n\nYou need to specify a root directory: changedFiles.rb<directory>\n\n\n"
  exit
end

root = ARGV[0]
oldfile_hash = {}
newfile_hash = {}
file_report = "#{root}/analysis_report.txt"
file_output = "#{root}/file_list.txt"
oldfile_output = "#{root}/file_list.old"

if File.exist?(file_output)
  File.rename(file_output, oldfile_output)
  File.open(oldfile_output, 'rb') do |infile|
    while (temp = infile.gets)
      line = /(.+)\s{5,5}(\w{32,32})/.match(temp)
      puts "#{line[1]} ---> #{line[2]}"
      oldfile_hash[line[1]] = line[2]
    end
  end
end

Find.find(root) do |file|
  next if /^\./.match(file)
  next unless File.file?(file)
  begin
    newfile_hash[file] = Digest::MD5.hexdigest(File.read(file))
  rescue
    puts "Error reading #{file} --- MD5 hash not computed."
  end
end

report = File.new(file_report, 'wb')
changed_files = File.new(file_output, 'wb')

newfile_hash.each do |file, md5|
  changed_files.puts "#{file} #{md5}"
end

newfile_hash.keys.select { |file| newfile_hash[file] == oldfile_hash[file] }.each do |file|
  newfile_hash.delete(file)
  oldfile_hash.delete(file)
end

newfile_hash.each do |file, md5|
  report.puts "#{oldfile_hash[file] ? 'Changed' : 'Added'} file: #{file} #{md5}"
  oldfile_hash.delete(file)
end

oldfile_hash.each do |file, _md5|
  report.puts "Deleted/Moved file: #{file}"
end

report.close
changed_files.close
