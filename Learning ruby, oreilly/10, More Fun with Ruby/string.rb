#!/usr/bin/env ruby

asiponder = <<whitman
As I ponder'd in silence,
Returning upon my poems, considering, lingering long,
A Phantom arose before me, with distrustful aspect,
Terrible in beauty, age, and power,
The genius of poets of old lands
whitman

puts "The text: \n " + asiponder
puts "Its class: " + (asiponder.class).to_s
puts "Its classname: " + (asiponder.class.name).to_s
puts "Its superclass: " + (asiponder.class.superclass).to_s
puts "Its included modules: " + (asiponder.class.included_modules).to_s
puts "Included modules in its superclass: " + (asiponder.class.superclass.included_modules).to_s
