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

# regex it
line[/Turbo!$/] = 'Targa!'
p line

line[/my/] = 'My'
p line

line[/Targa!$/] = '! This is funstuff'
p line
