#!/usr/bin/env ruby

opening = "When in disgrace with fortune and men's eyes\nI all alone beweep my  outcast state,\n"

p opening.class

#opening.grep(/men/)
#opening.grep(/m[ae]n/)

# fails because .grep has changed from string to enumerable according to
# https://gist.github.com/miketheman/1690297


p color =~ /colou?r/
