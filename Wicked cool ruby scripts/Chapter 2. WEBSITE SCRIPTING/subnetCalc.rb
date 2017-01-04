#!/usr/bin/env ruby

require 'ipaddr'

begin
  print "Enter the IP address: "
  ip = IPAddr.new gets.chomp
  print "Enter the Subnet mask: "
  subnet_mask = IPAddr.new gets.chomp
rescue Exception => e
  puts "An error occurred: #{e}\n\n"
end

subnet = ip.mask(subnet_mask.to_s)
puts "Subnet address is: #{subnet}\n\n"
