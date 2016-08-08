#!/usr/bin/env ruby

scale = 8

case scale
  when    0: puts "lowest"
  when 1..3: puts "medium-low"
  when 4..5: puts "medium"
  when 6..7: puts "medium-high"
  when 8..9: puts "high"
  when   10: puts "highest"
  else       puts "off scale"
end
# => high
