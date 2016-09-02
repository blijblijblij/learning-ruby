#!/usr/bin/env ruby

fruit = %w(apple orange banana)
fruit.pop # => "banana"
p fruit # => ["apple", "orange" ]
fruit.push 'mango'
p fruit # => ["apple", "orange", "mango"]

p months = %w( nil January February March April May June July August September October
             November December )

months.insert( 0, nil )
p months.delete "nil"
p months.delete nil
p months.delete "April"
p months.sort!
