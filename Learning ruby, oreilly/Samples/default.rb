#!/usr/bin/env ruby

def repeat( word="Hello! ", times=3 )
  puts word * times
end

repeat # => Hello! Hello! Hello!
repeat( "Good-bye! ", 5 ) # => Good-bye! Good-bye! Good-bye! Good-bye! Good-bye! 
