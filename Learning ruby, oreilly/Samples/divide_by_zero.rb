begin
    eval "12 / 0"
rescue ZeroDivisionError
    puts "Oops. You tries to divide by zero again."
    exit 1
ensure
    puts "Tsk. Tsk."
end