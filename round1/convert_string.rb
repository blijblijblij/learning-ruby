#!/usr/bin/env ruby

p "converting strings"

# convert to fixnum
p "200".class
p "200".to_f
p "200".to_f.class

# convert to integer
p "200".to_i
p "200".to_i.class

p "name".intern
p "name".to_sym
