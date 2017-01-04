#!/usr/bin/env ruby

require 'openssl'

unless ARGV[0]
  puts "Usage: ruby encrypt.rb <filename.ext>"
  puts "Example: ruby encrypt.rb secret.stuff"
  exit
end

# take in filename
filename = ARGV[0].chomp
puts filename

c = "Encrypted_#{filename}"
if File.exist?(c)
  puts "File already exists."
  exit
end
print 'Enter your encryption key (1-56 bytes): '
kee = gets.chomp

begin
  blowfish = Crypt::Blowfish.new(kee)
  blowfish.encrypt_file(filename.to_str, c)
  puts 'Encryption SUCCESS!'
rescue Exception => e
  puts "An error occurred during encryption: \n #{e}"
end
