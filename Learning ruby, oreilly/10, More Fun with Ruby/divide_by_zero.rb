#!/usr/bin/env ruby

begin
    eval "12 / 0"
rescue ZeroDivisionError
puts "Oops. You tried to divide by zero again."
exit 1
ensure
    puts "Tsk. Tsk > my custom made exceptions message instead of the default ZeroDivisionError"
end
