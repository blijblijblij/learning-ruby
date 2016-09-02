#!/usr/bin/env ruby

10.times { |i| print i, ' ' } # => 0 1 2 3 4 5 6 7 8 9 "\n"

10.times { |i| print 5*i, " " }

10.downto(1) { |c| print c, " "; sleep 1 }

1.upto(10) { |c| print c, " "; sleep 1 }
