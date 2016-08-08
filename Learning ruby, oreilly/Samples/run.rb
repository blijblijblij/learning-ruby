#!/usr/bin/env ruby

=begin
This Ruby program runs all the programs in the file archive for 
/Learning Ruby/ by Michael Fitzgerald (O'Reilly, 2007). See README.
Note the comments. Most programs could be run with e.g. Dir.foreach,
but several of them require input, elapsed time, etc., as you can see
by the comments. Move these programs, and you can run the rest using a loop.
Programs with these issues are:

matz_16.rb
matz_22.rb
matz_tk.rb
timer.rb
argf.rb
tk.rb
photo.rb

Programs that run in the background on Unix/Linux systems with & are:

system 'ruby matz_tk.rb &'
system 'ruby tk.rb &'
system 'ruby photo.rb &'

You must remove the & to run these programs on Windows. 

Note: Running this file will generate about 1000 lines of output.
=end

# Chapter 1

system 'ruby matz.rb'
system 'ruby matz_1.rb'
system 'ruby matz_2.rb'
system 'ruby matz_3.rb'
system 'ruby matz_4.rb'
system 'ruby matz_5.rb'
system 'ruby matz_6.rb'
system 'ruby matz_7.rb'
system 'ruby matz_8.rb'
system 'ruby matz_9.rb'
system 'ruby matz_10.rb'
system 'ruby matz_11.rb'
system 'ruby matz_12.rb'
system 'ruby matz_13.rb'
system 'ruby matz_14.rb'
system 'ruby matz_15.rb'
system 'ruby matz_16.rb Matz!' # requires input
system 'ruby matz_17.rb'
system 'ruby matz_18.rb'
system 'ruby matz_19.rb'
system 'ruby matz_20.rb'
system 'ruby matz_21.rb'
system 'ruby matz_22.rb' # requires input
system 'ruby matz_23.rb'
system 'ruby matz_24.rb'
system 'ruby matz_25.rb'
system 'ruby matz_26.rb'
system 'ruby matz_xml.rb'
system 'ruby hello.rb'
system 'ruby matz_tk.rb &' # runs in background
system 'ruby matz_shebang.rb' # from graphic

# Chapter 2

system 'ruby friendly.rb'
system 'ruby comments.rb'
system 'ruby thoreau.rb'
system 'ruby kcode.rb'
system 'ruby hamlet.rb'
system 'ruby value.rb'
system 'ruby undef.rb' # will generate an error
system 'ruby args.rb'
system 'ruby setter.rb'
system 'ruby default.rb'
system 'ruby num_args.rb'
system 'ruby two_plus.rb'
system 'ruby gimme.rb'
system 'ruby proc.rb'
system 'ruby return_block_proc.rb'
system 'ruby symbol.rb'

# Chapter 3

system 'ruby if.rb'
system 'ruby case.rb'
system 'ruby range.rb'
system 'ruby breeds.rb'
system 'ruby loop.rb'
system 'ruby for_loops.rb'
system 'ruby times_table.rb'
system 'ruby timer.rb' # hardcoded time trimmed to 1 minute from 10 in book
system 'ruby bmi.rb'
system 'ruby begin.rb'

# Chapter 4

system 'ruby limerick.rb'
system 'ruby regexp.rb'
system 'ruby string.rb' # code in chapter; generates error on frozen string

# Chapter 5

system 'ruby fractions.rb'
system 'ruby prime.rb'
system 'ruby prime_each.rb'
system 'ruby fact.rb 10' # factorials
system 'ruby math.rb' # code in chapter

# Chapter 6

system 'ruby array.rb' # code in chapter

# Chapter 7

system 'ruby hash.rb' # code in chapter

# Chapter 8 

system 'ruby open.rb'
system 'ruby argv.rb'
system 'ruby argf.rb sonnet_29.txt sonnet_119.txt sonnet_129.txt' # requires input
system 'ruby scrape.rb' # may not work
system 'ruby file.rb'

# Chapter 9

system 'ruby hello.rb'
system 'ruby array_of_ten.rb'
system 'ruby horse.rb'
system 'ruby dog.rb'
system 'ruby dogs.rb'
system 'ruby gaits.rb'
system 'ruby repeat.rb'
system 'ruby area.rb'
system 'ruby area_singleton.rb'
system 'ruby singleton.rb'
system 'ruby inherit.rb'
system 'ruby name.rb'
system 'ruby address.rb'
system 'ruby mixin.rb'
system 'ruby dice.rb'
system 'ruby game.rb'
system 'ruby binary.rb'
system 'ruby access.rb'

# Chapter 10

system 'ruby mondo.rb'
system 'ruby mangrove.rb'
system 'ruby mondo_b.rb'
system 'ruby mangrove_b.rb'
system 'ruby builder.rb'
system 'ruby tk.rb &' # runs in background
system 'ruby photo.rb &' # runs in background
system 'ruby meta.rb'
system 'ruby divide_by_zero.rb'
system 'ruby catch.rb'
Dir.chdir "Ratios"
system 'ruby ratios_test.rb'
Dir.chdir ".."
system 'ruby simple_erb.rb'
system 'ruby erb.rb'
