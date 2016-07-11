#!/usr/bin/env ruby

p Integer(1.4) # convert a floating-point number => 1
p Integer("256") # convert a string => 256
p Integer("0b11110010") # convert a binary number from a string => 242
p Integer(0177) # convert an octal number => 127
p Integer(0x20) # convert a hexadecimal number => 32
# p Integer(?z) # convert a character code => 122

p Float(167) # convert an integer => 167.0
p Float("77") # convert a string => 77.0
# p Float(?a) # convert a character code => 97.0
