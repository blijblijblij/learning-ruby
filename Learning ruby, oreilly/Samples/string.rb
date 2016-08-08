#!/usr/bin/env ruby

title = String.new # => ""
title.empty? # => true
title.length
title.size # => 0
title = String.new( "Much Ado about Nothing" )
title.empty? # => false
title.length # => 22
title = String( "Much Ado about Nothing" )
puts title # => Much Ado about Nothing
sad_love_story = "Romeo and Juliet"
sad_love_story = 'Romeo and Juliet'
lear = "King Lear\nA Tragedy\nby William Shakespeare"
puts lear # => King Lear
          #    A Tragedy
          #    by William Shakespeare
lear = 'King Lear\nA Tragedy\nby William Shakespeare'
puts lear # => King Lear\nA Tragedy\nby William Shakespeare
comedy = %!As You Like It!
history = %[Henry V]
tragedy = %(Julius Ceasar)
sonnet = <<29
When in disgrace with fortune and men's eyes
I all alone beweep my outcast state,
And trouble deaf heaven with my bootless cries,
And look upon myself, and curse my fate,
Wishing me like to one more rich in hope,
Featured like him, like him with friends possessed,
Desiring this man's art, and that man's scope,
With what I most enjoy contented least;
Yet in these thoughts my self almost despising,
Haply I think on thee, and then my state,
Like to the lark at break of day arising
From sullen earth, sings hymns at heaven's gate;
For thy sweet love remembered such wealth brings
That then I scorn to change my state with kings.
29
puts sonnet
sonnet = <<hamlet # same as double-quoted string
O my prophetic soul! My uncle!
hamlet

sonnet = <<"hamlet" # again, same as double-quoted string
O my prophetic soul! My uncle!
hamlet

sonnet = <<'ghost' # same as single-quoted string
Pity me not, but lend thy serious hearing
To what I shall unfold.
ghost

my_dir = <<`dir` # same as back ticks
ls -l
dir

ind = <<-hello # for indentation
	Hello, Matz!
hello

"Hello," " " "Matz" "!" # => "Hello, Matz!"
"Hello," + " " + "Matz" + "!" # => "Hello, Matz!"
"Hello, " << "Matz!" # => Hello, Matz!
"Hello," << " " << "Matz" << "!" # => Hello, Matz!
"Hello, ".concat "Matz!" 
h = "Hello, "
m = "Matz!"
h.concat(m)
greet = "Hello, Matz!"
greet.freeze

# try to append something
greet.concat("!") # => TypeError: can't modify frozen string

# is the object frozen?
greet.frozen? # => true

line = "A horse! a horse! my kingdom for a horse!"
cite = "Act V, Scene IV"
speaker = "King Richard III"

speaker['King'] # => "King" 
line[7] # => 33
line[7].chr # => "!"
line[18, 23] # => "my kingdom for a horse!" 
line[18, 23].capitalize # => "My kingdom for a horse!" 
cite[0..4] # => "Act V"
cite[0...4] # => "Act "
line[/horse!$/] # => "horse!"
line[/^A horse/, 0] # => "A horse"
line.index("k") # => 21
line[line.index("k")] # => 107
line[line.index("k")].chr # => "k"

hay = "Four score and seven years ago our fathers brought forth, upon this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal."

nicolay = "Four score and seven years ago our fathers brought forth, upon this continent, a new nation, conceived in liberty, and dedicated to the proposition that \"all men are created equal\""
hay == nicolay # => false
hay.eql? nicolay # => false

"a" <=> "a" # => 0
"a" <=> 97.chr # => 0
"a" <=> "b" # => -1
"a" <=> "`" # => 1
"a" <=> "A"
"a".casecmp "A" # => 0
"ferlin husky".casecmp "Ferlin Husky" # => 0
"Ferlin Husky".casecmp "Lefty Frizzell" # => -1

"A horse! " * 2 # => "A horse! A horse! "
taf = "That's ".downcase * 3 + "all folks!" # => "that's that's that's all folks!"
taf.capitalize # => "That's that's that's all folks!"

"Be carful.".insert 6, "e" # => "Be careful."
"Be careful!".insert 3, "very " # => "Be very careful!"
"Be careful!".insert 3, "very " * 5 # => "Be very very very very very careful!"

line = "A Porsche! a Porsche! my kingdom for a Porsche!"
cite = "Act V, Scene V"
speaker = "King Richard, 2007"
speaker[", 2007"]= "III" # => "III"
p speaker # => "King Richard III"
cite[13]= "IV" # => "IV"
p cite # => "Act V, Scene IV"
line[39,8]= "Porsche 911 Turbo!" # => "Porsche 911 Turbo!"
p line # => "A Porsche! a Porsche! my kingdom for a Porsche 911 Turbo!"
speaker[13..15]= "the Third" # => "the Third"
p speaker # => "King Richard the Third"
line[/Porsche!$/]= "Targa!" # => "Targa!"
p line # => "A Porsche! a Porsche! my kingdom for a Targa!"

joe = <<limerick
There once was a fellow named Joe
quite fond of Edgar Allen Poe
   He read with delight
   Nearly half the night
When his wife said "Get up!" he said "No."
limerick
# => "There once was a fellow named Joe\nquite fond of Edgar Allen Poe\n   He read with delight\n   Nearly half the night\nWhen his wife said \"Get up!\" he said \"No.\"\n"
joe.chomp! # => "There once was a fellow named Joe\nquite fond of Edgar Allen Poe\n   He read with delight\n   Nearly half the night\nWhen his wife said \"Get up!\" he said \"No.\"" 
joe.chomp! # => nil
joe.chop! # => "There once was a fellow named Joe\nquite fond of Edgar Allen Poe\n   He read with delight\n   Nearly half the night\nWhen his wife said \"Get up!\" he said \"No"

"That's call folks!".delete "c" # => "That's all folks"
"That's alll folks".delete "l" # => "That's a foks"
"That's alll folks".delete "ll" # => "That's a foks"
"That's all folks".delete "abcdefghijklmnopqrstuvwxyz", "^ha" # => "haa"

"That's alll folks".gsub "alll", "all" # => "That's all folks"
"That's alll folks".gsub "lll", "ll" # => "That's all folks"

call = "All hands on deck!"
call.replace "All feet on deck!" # => "All feet on deck!"
call = "All hands on deck!"
call = "All feet on deck!" 

# same object
call = "All hands on deck!" # => "All hands on deck!"
call.object_id # => 1624370
call.replace "All feet on deck!" # => "All feet on deck!"
call.object_id # => 1624370

# different object
call = "All hands on deck!" # => "All hands on deck!"
call.object_id # => 1600420
call = "All feet on deck!" # => "All feet on deck!"
call.object_id # => 1009410
"abcdefghijklmnopqrstuvwxyz".reverse # => "zyxwvutsrqponmlkjihgfedcba"
palindrome = "dennis sinned"
palindrome.reverse! # => "dennis sinned"
p palindrome

"0123456789".split # => ["0123456789"]
"0123456789".split( // ) # => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

c_w = "George Jones, Conway Twitty, Lefty Frizzell, Ferlin Husky" 
# => "George Jones, Conway Twitty, Lefty Frizzell, Ferlin Husky"
c_w.split(/, /) # => ["George Jones", "Conway Twitty", "Lefty Frizzell", "Ferlin Husky"]

"Ruby finally has a killer app. It's Ruby on Rails.".capitalize # => "Ruby finally has a killer app. it's ruby on rails."

"new\nopen\nclose\nprint".each { |item| puts item.capitalize }# =>
# New
# Open
# Close
# Print

"matz".each_byte { |b| print b, "/" } # => 109/97/116/122/
"matz".each_byte { |b| print b.chr, "/" } # => m/a/t/z/
out = [] # create an empty array
"matz".each_byte { |b| p out << b} # =>
# => [109]
# => [109, 97]
# => [109, 97, 116]
# => [109, 97, 116, 122]
p out # => [109, 97, 116, 122]

"YOU KNOW IT CAN BE ANNOYING TO READ SOMETHING THAT IS IN ALL UPPERCASE LETTERS!".downcase # => "you know it can be annoying to read something that is all in uppercase letters!"

"YOU KNOW IT CAN BE ANNOYING TO READ SOMETHING THAT IS ALL IN UPPERCASE LETTERS!".downcase.capitalize # => "You know it can be annoying to read something that is all in uppercase letters!"
"warning! keyboard may be hot!".upcase # => WARNING! KEYBOARD MAY BE HOT!

"aAbBcCdDeEfFgGhHiI".swapcase # => "AaBbCcDdEeFfGgHhIi"

title = "Love's Labours Lost"
title.size # => 19  
title.ljust 10 # => "Love's Labours Lost"
title.rjust 19 # => "Love's Labours Lost"
title.ljust 20 # => "Love's Labours Lost "
title.rjust 25 # => "      Love's Labours Lost"
title.rjust( 21, "-" ) # => "--Love's Labours Lost"
title.rjust 25, "->" # => "->->->Love's Labours Lost"
title.rjust(20, "-").ljust(21, "-") # => "-Love's Labours Lost-"
title.center 23 # => "  Love's Labours Lost  "
title.center 23, "-" # => "--Love's Labours Lost--"
filename = "hack.rb" # => "hack.rb"
filename.size # => 7
filename.center 40-7, "#" # => "#############hack.rb#############"

fear = "             Fear is the little darkroom where negatives are developed. -- Michael Pritchard                  "
fear.lstrip! # => "Fear is the little darkroom where negatives are developed. -- Michael Pritchard                  "
fear.rstrip! # => "Fear is the little darkroom where negatives are developed. -- Michael Pritchard"
fear.strip! # => "Fear is the little darkroom where negatives are developed. -- Michael Pritchard"
"\t\tBye, tabs and line endings!\r\n".strip # => "Bye, tabs and line endings!" 

"a".next
"a".succ # => "b"
"aa".next # => "ab"
"z".next # => "aa" # two a's after one z
"zzzz".next # => "aaaaa" # five a's after four z's
"999.0".next # => "999.1" # increment by .1
"999".next # => "1000" # increment from 999 to 1000
" ".next # => "!"
"0".next.next.next # => "3"
"2007".next # => "2008"
2008.next # => 2009
120.chr # => "x"
120.chr.next # => "y"

"a".upto("z") { |i| print i } # => abcdefghijklmnopqrstuvwxyz

for i in "a".."z"
  print i
end

"200".class # => String
"200".to_f # => 200.0
"200".to_f.class # => Float
"100".class # => String
"100".to_i # => 100
"100".to_i.class # => Fixnum
"name".intern # => :name
"name".to_sym # => :name
play = "The Merchant of Venice".intern # => :"The Merchant of Venice" 
(256.0).class # => Float
(256.0).to_s # => "256.0"

opening = "When in disgrace with fortune and men's eyes\nI all alone beweep my outcast state,\n"
opening.grep(/men/) # => ["When in disgrace with fortune and men's eyes\n"]
opening.grep(/m[ae]n/) # => ["When in disgrace with fortune and men's eyes\n"]
opening.grep(/men|man/) # => ["When in disgrace with fortune and men's eyes\n"]
opening.grep(/m(e|a)n/) # => ["When in disgrace with fortune and men's eyes\n"]
opening.grep(/^When in/) # => ["When in disgrace with fortune and men's eyes\n"]
opening.grep(/outcast state,$/) # => ["I all alone beweep my outcast state,\n"]
opening.grep(/\AWhen in/) # => ["When in disgrace with fortune and men's eyes\n"]
opening.grep(/outcast state,\z/) # => ["I all alone beweep my outcast state,"]
phone.grep(/[\(\d\d\d\)]?\d\d\d-\d\d\d\d/) # => ["(555)123-4567"]
color.grep(/colou?r/) # => ["I think that colour is just right for you office."] 
phone.grep(/[\(\d+\)]?\d+-\d+/) # => ["(555)123-4567"]
phone.grep(/[\(\d{3}\)]?\d{3}-\d{4}/)# => ["(555)123-4567"]
color =~ /colou?r/ # => 13
color !~ /colou?r/ # => false
