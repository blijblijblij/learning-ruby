#!/usr/bin/env ruby

line = 'A Porsche! a Porsche! my kingdom for a Porsche!'
cite = 'Act V, Scene V'
speaker = 'King Richard, 2007'

# change part of a string
speaker[', 2007'] = ' III'
# why is
puts speaker
p speaker
# different?! http://stackoverflow.com/questions/1255324/p-vs-puts-in-ruby
# states p and puts are not the same, p effectively means foo.inspect

# change a char location: cite
cite[13] = 'IV'
p 'cite: ' + cite

speaker[13..15]
p speaker

# Add on a specific location
line[39, 8] = 'Porsche 911 Turbo!'
p line

# regex replacements
line[/Turbo!$/] = 'Targa!'
p line

line[/my/] = 'My'
p line

p line[/Targa!$/] = '! This is funstuff'
p line

# substite
p "That's alll folks".gsub "alll folks", "all fokz"
p "That's alll folks".gsub "lll", "ll"

# delete
p "That's call folks!".delete "c"

# replace the entire string by something else
call = "All hands on deck!"
p call

call.replace "All feet on deck!"
p call

palindrome = "abcdefhijklmnopqrstuvwxyz"
p palindrome

palindrome.reverse!
p palindrome

palindrome.split(//)

p palindrome

p "0123456789".split

p "0123456789".split(//)

p c_w = "George Jones, Conway Twitty, Lefty Frizzell, Ferlin Husky"
p c_w.split(/, /)

p "Ruby finally has a killer app. It's Ruby on Rails.".capitalize

p "YOU KNOW IT CAN BE ANNOYING TO READ SOMETHING THAT IS IN ALL UPPERCASE LETTERS!". downcase

p "aAbBcCdDeEfFgGhHiI".swapcase

p palindrome.size
p palindrome.center 30-1, "|"
p palindrome.center 30-1, "|"
