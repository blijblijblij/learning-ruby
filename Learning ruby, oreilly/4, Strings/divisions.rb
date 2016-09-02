#!/usr/bin/env ruby

puts '24 / 2 = ' + (24 / 2).to_s # no problem => 12

puts '25 / 2 = ' + (25 / 2).to_s # uh-oh, truncation => 12

puts '25.0 / 2 = ' + (25.0 / 2).to_s # using a float as at least one operand solves it => 12.5

puts '25.0 / 2.0 = ' + (25.0 / 2.0).to_s # same when both operands are floats => 12.5

op = 0
if !op.zero? # not a zero?
    puts 12 / op
else
    puts "Can't divide by zero."
end

op = 2
if op.nonzero? # is it nonzero?
    puts 12 / op
else
    puts "Can't divide by zero."
end

num = 4 # => 4
if num.integer?
    puts 'Invited guests: ' + num.to_s
else
    puts 'Only whole persons can come to this party.'
end
