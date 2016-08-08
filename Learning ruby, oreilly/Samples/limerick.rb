#!/usr/bin/env ruby

joe = <<limerick 
There once was a fellow named Joe 
quite fond of Edgar Allen Poe 
   He read with delight 
   Nearly half the night 
When his wife said "Get up!" he said "No."
limerick
# => "There once was a fellow named Joe\nquite fond of Edgar Allen Poe\n   He read with delight\n   Nearly half the night\nWhen his wife said \"Get up!\" he said \"No.\"\n" 

p joe.chomp! # => "There once was a fellow named Joe\nquite fond of Edgar Allen Poe\n   He read with delight\n   Nearly half the night\nWhen his wife said \"Get up!\" he said \"No.\""

p joe.chop! # => "There once was a fellow named Joe\nquite fond of Edgar Allen Poe\n   He read with delight\n   Nearly half the night\nWhen his wife said \"Get up!\" he said \"No.\" 
