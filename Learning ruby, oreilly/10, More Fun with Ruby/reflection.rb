#!/usr/bin/env ruby

asiponder = <<whitman
As I ponder'd in silence,
Returning upon my poems, considering, lingering long,
A Phantom arose before me, with distrustful aspect,
Terrible in beauty, age, and power,
The genius of poets of old lands
whitman

puts asiponder.class.to_s

if asiponder.instance_of?(String)
    asiponder.split.each do |t|
        puts t
    end
end
