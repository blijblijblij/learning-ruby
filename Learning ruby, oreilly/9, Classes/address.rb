#!/usr/bin/env ruby

load 'name.rb'

class Address < Name
  attr_accessor :street, :city, :state, :country
end

a = Address.new
a.given_name = "bloebbloeb"
puts a.respond_to?(:given_name)
puts a.given_name
