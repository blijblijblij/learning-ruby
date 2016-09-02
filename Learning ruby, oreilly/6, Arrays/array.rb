#!/usr/bin/env ruby

puts num = Array.new(10) { |e| e *= 2 }
puts digits = Array(0..9)
digits[0] = 1011
puts digits

month_abbrv = Array.[]('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec')
puts month_abbrv

month_abbrv = Array['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec']
puts month_abbrv

months = [nil, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
puts months

hodge_podge = ['January', 1, :year, [2006, 0o1, 0o1]]
hodge_podge.each { |e| print e.class, ' ' } # => String Fixnum Symbol Array

q1 = %w(January February March)
puts q1

year = %w[ 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 ]
print 'The event is scheduled for ' + months[3] + ' ' + year[8] + '.'

# latest element of the Array
puts "Latest element: " + q1[-1]
puts "Latest element: " + q1[-2]
puts "Latest element: " + q1[1]
puts "First 3 : " + (q1.first(3)).to_s
puts "Last 2: " + (q1.last(2)).to_s
puts "Where is February?!: " + (q1.index "February").to_s

p shopping_list = %w[ cheese bread crackers potatoes carrots cheese ]
p shopping_list.uniq!
