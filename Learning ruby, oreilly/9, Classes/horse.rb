#!/usr/bin/env ruby

class Horse
    attr_reader :name

    attr_writer :name
end
horsy = Horse.new
horsy.name = 'bloeb'
puts horsy.name
