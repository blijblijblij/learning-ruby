#!/usr/bin/env ruby

thoreau = "If a man does not keep pace with his companions, perhaps it is because he hears a different drummer."

puts thoreau[37..46] # => "companions"

puts thoreau[-8..-2] # => "drummer"

thoreau.each_byte do |c|
  print c.chr, "/"
end
# => I/f/ /a/ /m/a/n/ /d/o/e/s/ /n/o/t/ /k/e/e/p/ /p/a/c/e/ /w/i/t/h/ /h/i/s/ /c/o/m/p/a/n/i/o/n/s/,/ /p/e/r/h/a/p/s/ /i/t/ /i/s/ /b/e/c/a/u/s/e/ /h/e/ /h/e/a/r/s/ /a/ /d/i/f/f/e/r/e/n/t/ /d/r/u/m/m/e/r/./
