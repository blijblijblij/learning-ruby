#!/usr/bin/env ruby

months = Array.new
months.empty? # => true

months = Array.new(12)
months = Array.new 12
months.size # => 12
months.length # => 12
puts months.inspect
p months

month = Array.new(12, "month")

month.clear # => []
month.empty? # => true

num = Array.new(10) { |e| e = e * 2 }

month_abbrv = Array.[]( "jan", "feb", "mar", "apr", "may", "jun",
"jul", "aug", "sep", "oct", "nov", "dec" )

month_abbrv = Array[ "jan", "feb", "mar", "apr", "may", "jun",
"jul", "aug", "sep", "oct", "nov", "dec" ]

months = [ nil, "January", "February", "March", "April", "May", "June", 
"July", "August", "September", "October", "November", "December" ]

digits = Array(0..9) # => [1, 2, 3, 4, 5, 6, 7, 8, 9]

donald_duck_nephews = Array( "Huey" "Dewey" "Louie" )

months = %w[ nil January February March April May June July August September October November December ]

months[0] = nil;

year = %w[ 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 ]
year[0].class # => String

year = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009]
year[0].class # => Fixnum

hodge_podge = ["January", 1, :year, [2006,01,01]]
hodge_podge.each {|e| print e.class, " " } # => String Fixnum Symbol Array

q1 = %w[ January February March ]
q1[0] # => January
q1[2] # => March
q1.at(0) # => January
years = ["2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009"]
print "The event is scheduled for " + months[3] + " " + years[8] + "."
q1[-1] # => March
q1[1]
q1[-2]
q1.first # => January
q1.last # => March
q1.first 2 # => ["January", "February"]
q1.last 0 # => [] not particularly useful
q1.index "March" # => 2

year = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009]
year[0, 3] # => [2000, 2001, 2002]
year[7..9] # => [2007, 2008, 2009]
year.slice(1) # => 2001
year.slice(0,4) # => [2000, 2001, 2002, 2003]
year.slice(0..2) # => [2000, 2001, 2002]
year.slice(0...2) # => [2000, 2001]
year.include? 2004 # => true
year.include?( 2010 ) # => false

q1 = %w[ January February March ]
q2 = %w[ April May June ]
q3 = %w[ July August September ]
q4 = %w[ October November December ]
half1 = q1 + q2
half2 = q3 + q4
yr = half1 + half2
yrs = [1999]
yrs << 2000 # => [1999, 2000]
yrs << 2001 << 2002 << 2003 # => [1999, 2000, 2001, 2002, 2003]
last_part = q3.concat( q4 )

tue = [ "shop", "make pie", "sleep" ]
wed = [ "shop", "make pie", "read", "sleep" ]
tue & wed # => ["shop", "make pie", "sleep"]
wed - tue # => ["read"]
tue | wed # => ["shop", "make pie", "read", "sleep"]

shopping_list = %w[ cheese bread crackers potatoes carrots cheese ]
shopping_list.uniq! # => ["cheese", "bread", "crackers", "potatoes", "carrots"]

fruit = %w[ apple orange banana ]
fruit.pop # => "banana"
p fruit # => ["apple", "orange" ]
fruit.push "mango" 
p fruit # => ["apple", "orange", "mango"]

bob = [ "full", 40, "yes" ]
lou = ["part", 23, "no"]
schlomo = [ "full", 40, "yes" ]
lou == lou # => true
bob == schlomo # => true
schlomo == lou # => false
bob == schlomo # => true
bob.eql?( "full, 40, yes" ) # => false, bob is not a string
lou <=> lou # => 0
bob <=> lou # => -1
lou <=> schlomo # => 1

months = %w[ nil January February March April May June July August September October November December ]
months.insert( 0, nil )
months[5..7] = "Mai", "Juni", "Juli" # => [nil, "January", "February", "March", "April", "Mai", "Juni", "Juli", "August", "September", "October", "November", "December"]
months[5, 3] = "May", "June", "July" # => [nil, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

greeting = [ "Hello! ", "Bonjour! ", "Guten Tag!" ]
puts greeting.to_s # => Hello! Bonjour! Guten Tag!
months.join # => "JanuaryFebruaryMarchAprilMayJuneJulyAugustSeptemberOctoberNovemberDecember"
months.join ", " # => " , January, February, March, April, May, June, July, August, September, October, November, December"
months.compact.join( ", " ) # => "January, February, March, April, May, June, July, August, September, October, November, December"

dates = [ 4, 5, 6, 7 ] # => [4, 5, 6, 7]
dates.shift # => 4
p dates # => [5, 6, 7]
dates.unshift 4 # => [4, 5, 6, 7]
dates.unshift(2,3) # => [2, 3, 4, 5, 6, 7]

month_a = %w[ nil jan feb mar apr may jun jul aug sep oct nov dec ] # => ["nil", "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"]
month_a.delete "nil" 
month_a.delete("noon") {"noon wasn't found. What are you going to do about it?"}
month_a.delete_at( 12 ) # => "dec"
p month_a # ["nil", "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov"]

month_a.each { |e| print e.capitalize + " " }
month_a_2007 = month_a.map { |e| e.capitalize + " 2007" }
p month_a_2007 # => ["Jan 2007", "Feb 2007", "Mar 2007", "Apr 2007", "May 2007", "Jun 2007", "Jul 2007", "Aug 2007", "Sep 2007", "Oct 2007", "Nov 2007", "Dec 2007"]

x = [ 2, 5, 1, 7, 23, 99, 14, 27 ]
x.sort! # => [1, 2, 5, 7, 14, 23, 27, 99]
%w[ one two three four five six seven eight nine ten ].reverse # => ["ten", "nine", "eight", "seven", "six", "five", "four", "three", "two", "one"]

d2 = [ ["January", 2007],
       ["February", 2007],
       ["March", 2007] ]
yrs = [ 2007, 2008, 2009 ]
days = [ 31, [28, 29], 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]
months = [ "Jn", "Fb", "Mr", "Ap", "Ma", "Ju", "Jl", "Au", "Sp", "Oc", "Nv", "Dc" ]
d3 = [ yrs, days, months ] # => => [[2007, 2008, 2009], [31, [28, 29], 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], ["Jn", "Fb", "Mr", "Ap", "Ma", "Ju", "Jl", "Au", "Sp", "Oc", "Nv", "Dc"]]
d2.flatten # => ["January", 2007, "February", 2007, "March", 2007]
d2 = [ ["January", 2007], ["February", 2007], ["March", 2007] ]
d2.transpose # => => [["January", "February", "March"], [2007, 2007, 2007]]
