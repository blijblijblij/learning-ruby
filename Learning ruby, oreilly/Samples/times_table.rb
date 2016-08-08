#!/usr/bin/env ruby

def times_tables
  1.upto(12) { |i| 1.upto(12) { |j| print i.to_s + " x " + j.to_s + " = ", j * i, "\n"} }
end

times_tables
