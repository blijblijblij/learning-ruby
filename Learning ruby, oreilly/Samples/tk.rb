#!/usr/bin/env ruby

require 'tk'

TkRoot.new {title "Ruby is fun!" }

TkLabel.new {
  font TkFont.new( 'mistral 42' )
  text "Ruby is fun, in case you didn't notice!"
  width 30 
  height 3
  fg 'blue'
  pack
}

TkButton.new { 
  text 'Quit'
  command 'exit'
  pack
}

Tk.mainloop
