#!/usr/bin/env ruby

def factorial( n )

  print n
  print "*" if n > 1

  if n <= 1
    1
  else
    n * factorial( n-1 )
  end

end

print "=", factorial( ARGV[0].to_i ), "\n"
