#!/usr/bin/env ruby

class Hello
    def initialize(name) @name = name
    end

    def hello_matz
        puts 'Hello, ' + @name + '!'
    end
end

hi = Hello.new("bloeb")
hi.hello_matz
