#!/usr/bin/env ruby
require 'tk'
TkRoot.new { title 'Ruby is fun!' }
TkLabel.new do
    font TckFont.new('mistral 42')
    text "Ruby is fun, in case you didn't notice!"
    width 30
    height 3
    fg 'blue'
    pack
end
TkButton.new do
    text 'Quit'
    command 'exit'
    pack
end
Tk.mainloop
